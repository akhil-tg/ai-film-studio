# Character sheets

The user needs **reference images** to attach to every shot. You write the prompts that produce them. You never generate the images.

## What a sheet contains

1. **Locked description** — 40–60 words, visible facts only
2. **Voice line** — register, accent, texture
3. **Turnaround** — front, three-quarter, profile, back, full body
4. **Portrait** — head and shoulders, for the face reference
5. **Expressions** — 4–6 named states
6. **Wardrobe** — one outfit per story phase

## The turnaround

**One prompt per angle.** Never one prompt asking for four views — you get a collage of four different characters.

```
Character reference, full body, <ANGLE>, plain neutral grey backdrop,
even soft light, no shadow on the background.
<locked description, verbatim>
<clothing, verbatim>
Photographic, 50mm, eye level.
No text, no props, no other characters.
```

Angles to run, in order:

1. Front
2. Three-quarter left
3. Profile left
4. Back

Then a portrait:

```
Character portrait, head and shoulders, front, plain neutral grey backdrop.
<locked description, verbatim>
Neutral expression. Photographic, 85mm.
No text, no props.
```

## Order of work

1. **Lock the text first.** No image prompt until the description is approved.
2. Generate the **front**. If it's wrong, fix the *description* — not the prompt wording.
3. Use the approved front as an image reference to generate the other angles.
4. Do expressions last, from the portrait.
5. Keep the file names stable: `refs/ravi-front.png`, `refs/ravi-portrait.png`.

## Consistency rules

- Attach the **front and the portrait** to every shot with that character.
- Never regenerate "a better one" — a new front is a new character.
- Wardrobe changes only at a planned change, and goes in `continuity.md`.
- Fur, hair and eye colour drift first. State them twice.

## Expressions worth having

Neutral · fear · anger · grief · relief · resolve.

Five or six is enough. A hundred expressions is a hundred chances to drift.

## What not to do

- Don't ask for a "character sheet" as a single image.
- Don't describe personality in an image prompt — only what is visible.
- Don't include scene props; the sheet is the character, alone.
- Don't generate the images, and don't claim to have seen them.
