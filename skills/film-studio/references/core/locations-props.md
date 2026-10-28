# Locations and props

Places and objects drift exactly like faces. A phone that changes model in episode 3 breaks the illusion faster than a changed face.

## Locations

Per location, write:

- **Locked description** — materials, architecture, light, weather
- **Establishing prompt** — the wide that defines the place
- **2–3 angles** — reverse, detail, threshold
- **Light variants** — day, night, rain (only the ones the story uses)
- **Sound signature** — for the audio layer

Template:

```
<Location>, <materials>, <architecture>, <light>, <weather>.
<ANGLE: wide establishing | reverse | detail | doorway>.
<Time of day>.
No people. No text. <aspect ratio>.
```

**No people in a location plate.** You want the place, not extras. Nothing dates a location shot faster than a stranger standing in it.

## Props

Only props that recur. One prompt each.

```
<Object>, <material>, <size>, <condition>, <surface detail>.
Isolated on a plain background, soft even light.
No hands, no text.
```

Record where the prop is at the end of each episode in `continuity.md`. "The phone is in his pocket, cracked" is a continuity fact, not a detail.

## Why this matters more than it sounds

A storyboard says "kitchen". Twenty generations later there are four kitchens. The fix isn't a better prompt — it's one locked location plate, attached to every kitchen shot.

## Order of work

1. Lock the world description in `story.md`
2. Generate the establishing angle first
3. Reuse it as a reference for the other angles
4. Keep file names stable: `refs/kitchen-wide.png`

## Negatives

```
No people, no text, no signage, no modern objects in a period piece.
```

For non-Latin signage: **always** no text. Render Malayalam, Tamil or Devanagari in an image model and you get beautiful gibberish.
