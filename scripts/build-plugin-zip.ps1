# Builds the ChatGPT/Codex plugin ZIP.
# Usage: powershell -ExecutionPolicy Bypass -File scripts\build-plugin-zip.ps1
#
# Layout at the archive root (required by the Agent Plugins spec):
#   plugin.json
#   LICENSE
#   skills/film-studio/SKILL.md
#   skills/film-studio/references/...
#   skills/film-studio/assets/...
#
# Uses System.IO.Compression directly so entry paths use forward slashes.
# Compress-Archive on Windows PowerShell writes backslashes, which plugin
# hosts reject.

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root = Split-Path -Parent $PSScriptRoot
$out  = Join-Path $root "dist"
$zip  = Join-Path $out "ai-film-studio-plugin.zip"

$manifest = Join-Path $root "plugin.json"
$skills   = Join-Path $root "skills"
$license  = Join-Path $root "LICENSE"

if (-not (Test-Path $manifest)) { throw "plugin.json not found at plugin root: $manifest" }
if (-not (Test-Path $skills))   { throw "skills/ not found at plugin root: $skills" }

New-Item -ItemType Directory -Force -Path $out | Out-Null
if (Test-Path $zip) { Remove-Item $zip -Force }

$archive = [System.IO.Compression.ZipFile]::Open($zip, 'Create')
try {
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
        $archive, $manifest, 'plugin.json') | Out-Null

    if (Test-Path $license) {
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $archive, $license, 'LICENSE') | Out-Null
    }

    Get-ChildItem -Path $skills -Recurse -File | ForEach-Object {
        $rel = $_.FullName.Substring($root.Length + 1).Replace('\', '/')
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
    $bad     = $check.Entries | Where-Object { $_.FullName -like '*\*' }
    $m       = $check.Entries | Where-Object { $_.FullName -eq 'plugin.json' }
    $skill   = $check.Entries | Where-Object { $_.FullName -eq 'skills/film-studio/SKILL.md' }
    $refs    = ($check.Entries | Where-Object { $_.FullName -like 'skills/film-studio/references/*' }).Count
    $tmpl    = ($check.Entries | Where-Object { $_.FullName -like 'skills/film-studio/assets/*' }).Count

    if ($bad)       { throw "Backslash paths found in ZIP: $($bad[0].FullName)" }
    if (-not $m)    { throw "plugin.json missing from ZIP root" }
    if (-not $skill) { throw "skills/film-studio/SKILL.md missing from ZIP" }

    Write-Host "Verified: $($check.Entries.Count) entries, $refs references, $tmpl templates, SKILL.md $($skill.Length) bytes"
}
finally { $check.Dispose() }

Write-Host "Upload at: ChatGPT > Admin console > Plugins > Add > Upload plugin (workspace admin only)"
Write-Host "Or copy skills\film-studio\ to $HOME\.agents\skills\film-studio\ for local use."
