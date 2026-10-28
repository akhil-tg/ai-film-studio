# Character sheets

One plain prompt per character, pasted into Flow exactly as written. You write it; the user generates it. You never generate the image.

## Why one prompt

The sheet is a **reference**, not a portrait: four views of the same character at the same scale, so every later shot can attach one file and stay recognisable.

A single plain paragraph also survives copy-paste. Labelled fields ("Face:", "Hair:") get pasted into an image model that treats the labels as things to draw.

## The prompt

One paragraph, 80–150 words, no headings, no bullets. In this order:

1. **What it is** — character reference sheet, seamless neutral grey background, even soft light
2. **The views** — front, three-quarter, side, back; same scale; identical character
3. **Who they are** — name, age, height, build, skin or fur with exact markings, face, eyes, hair
4. **What they wear** — every garment, colour, material, footwear
5. **One distinguishing detail** — scar, chipped tooth, cracked watch, torn ear
6. **Pose and expression** — standing, arms relaxed, neutral, eyes to camera
7. **Style** — photographic, cinematic, sharp, 50mm, full figure head to toe
8. **Negatives and ratio** — no text, labels, props, other characters, cropped limbs

## Template

```
Character reference sheet on a seamless neutral grey studio background, even soft frontal lighting, no shadows on the backdrop. One single character shown four times in a row at the same scale: full body front view, full body three-quarter view, full body side profile, full body back view, identical character in every view with the same height, build, face, hair, clothing, colours and markings. <NAME>, <age> years old, <height and build>, <skin tone or fur colour and exact markings>, <face shape>, <eye colour and shape>, <hair: length, style, colour>, wearing <full outfit with colours and materials>, <footwear>, <one distinguishing mark>. Standing straight, arms relaxed at the sides, neutral expression, eyes open, looking at the camera in the front and three-quarter views. Photographic, cinematic, sharp focus, natural skin and fabric texture, 50mm lens, eye level, full figure visible head to toe with space above the head and below the feet. No text, no labels, no watermark, no props, no furniture, no other characters, no cropped limbs. <aspect ratio>.
```

For animals, add after the name — `anthropomorphic <species>, upright, human proportions, human hands with fingers, human clothing` — and in the negatives: `no humans, no human faces, no feral <species>, no quadruped pose, no mascot costume`.

## The fallback

Sometimes four views come back as four different characters. Don't argue with it — split it:

1. Keep the **front** view. That is the character.
2. Generate three-quarter, profile and back **from it as an image reference**, one at a time.
3. Never regenerate the front "better" — that is a new character.

Per-angle prompt:

```
Character reference, full body, <ANGLE>, plain neutral grey backdrop, even soft light.
<locked description, verbatim>
<clothing, verbatim>
Photographic, 50mm, eye level. No text, no props, no other characters.
```

## Consistency

- Save as `refs/<name>-sheet.png` and never overwrite it.
- Attach that sheet to every shot with this character.
- Wardrobe changes only at planned changes, logged in `continuity.md`.
- Fur, hair and eye colour drift first — state them twice.

## Expressions

Only if the story needs them: neutral, fear, anger, grief, relief, resolve. Generate each from the sheet as a reference. Five or six is enough.

## What not to do

- Don't put two characters in one sheet.
- Don't describe personality — only what is visible.
- Don't include scene props; the sheet is the character alone.
- Don't generate the images, and don't claim to have seen them.
