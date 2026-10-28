# Flow agent instructions

Before the first video, paste **one block** of standing instructions into Flow. They are the project's house rules: they hold across every generation, so each shot prompt stays short and doesn't repeat the whole world.

This is not a shot prompt. It is the brief you give the model once, at the start.

## What goes in

- **Role and project** — what this footage is, for which platform, in which language
- **Frame and style** — aspect ratio, film stock, palette, grain, lens character
- **Cast** — attach the sheet, keep the face, never add a character
- **Animals** — anthropomorphic, upright, human hands and clothing, no humans anywhere
- **Continuity** — same wardrobe, same location plate, first/last frame where a shot continues
- **Sound** — native dialogue, locked voice, ambience, an effect for every visible action
- **Music** — none, or one track with no vocals
- **Text** — none at all
- **Duration** — 4, 6, 8 or 10 seconds, nothing else
- **Behaviour** — one action and one camera move per clip, no cuts inside a generation

## Template

One continuous block. No headings, no bullets — it is pasted, not read.

```
You are generating footage for <PROJECT>, a <format> in <language>, vertical 9:16. Visual style: <film stock, palette, grain, lens>. Every shot contains one action and one camera move, with no cuts inside the clip. Keep every attached character reference sheet exactly as it is: same face, hair or fur, markings, clothing, colours and proportions. Do not add, replace or restyle characters, and do not change wardrobe unless the prompt says so. <If animals:> Every character is anthropomorphic, upright, with human hands and human clothing. Never show humans, human faces, human hands or people anywhere, including the background, crowds, posters and reflections. Keep attached location plates consistent in architecture, materials and light direction. Dialogue is spoken naturally in <language> by the named character, in the locked voice; no dubbing and no narration unless asked. Every shot has ambience, and every visible action has a sound effect. Music: <none / one track, no vocals>. No text, no subtitles, no captions, no logos, no watermarks. Durations are 4, 6, 8 or 10 seconds only. If a shot continues the previous one, start from its final frame.
```

## Using it

1. Paste it once, before generating anything.
2. Then work scene by scene, one shot at a time.
3. Change it only when a **project rule** changes — a new episode with a new location is not a rule change. A new language, a new cast type, or music switching on is.
4. Keep the same block all the way through the series. A rewritten brief is a rewritten look.

## Do not

- Don't paste the shot list into it.
- Don't put individual dialogue lines in it — those belong in each shot.
- Don't let it grow into a script. If it passes about 250 words, the model starts ignoring the end of it.
