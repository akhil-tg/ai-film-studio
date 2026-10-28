# Builds the claude.ai-uploadable skill ZIP.
# Usage: powershell -ExecutionPolicy Bypass -File scripts\build-skill-zip.ps1
#
# Uses System.IO.Compression directly so entry paths use forward slashes.
# Compress-Archive on Windows PowerShell writes backslashes, which some
# ZIP consumers (including skill uploads) reject.

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root   = Split-Path -Parent $PSScriptRoot
$skills = Join-Path $root "skills"
$src    = Join-Path $skills "film-studio"
$out    = Join-Path $root "dist"
$zip    = Join-Path $out "film-studio-skill.zip"

if (-not (Test-Path $src)) { throw "Skill folder not found: $src" }

New-Item -ItemType Directory -Force -Path $out | Out-Null
if (Test-Path $zip) { Remove-Item $zip -Force }

$archive = [System.IO.Compression.ZipFile]::Open($zip, 'Create')
try {
    Get-ChildItem -Path $src -Recurse -File | ForEach-Object {
        $rel = $_.FullName.Substring($skills.Length + 1).Replace('\', '/')
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $archive, $_.FullName, $rel) | Out-Null
    }
}
finally {
    $archive.Dispose()
}

$size = [math]::Round((Get-Item $zip).Length / 1KB, 1)
Write-Host "Built $zip ($size KB)"

# Verify
$check = [System.IO.Compression.ZipFile]::OpenRead($zip)
try {
    $bad = $check.Entries | Where-Object { $_.FullName -like '*\*' }
    $skill = $check.Entries | Where-Object { $_.FullName -eq 'film-studio/SKILL.md' }
    if ($bad)   { throw "Backslash paths found in ZIP: $($bad[0].FullName)" }
    if (-not $skill) { throw "film-studio/SKILL.md missing from ZIP" }
    Write-Host "Verified: $($check.Entries.Count) entries, SKILL.md $($skill.Length) bytes"
}
finally { $check.Dispose() }

Write-Host "Upload at: claude.ai > Settings > Capabilities > Skills > + > Create skill > Upload a skill"
