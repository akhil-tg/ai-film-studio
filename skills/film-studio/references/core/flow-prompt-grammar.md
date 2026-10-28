# Flow prompt grammar

Reference for writing any `prompts.md`. Read before producing prompts.

## Prompt order

Fixed. Same sequence every time, so results are comparable and debuggable:

```
[locked description] + [action] + [setting] + [camera: size + move] +
[lighting] + [style] + [dialogue + voice] + [ambience + effects] +
[negatives] + [duration + aspect]
```

Example:

> Arjun, 17, thin, dark brown skin, sharp jaw, short black hair with a faded
> undercut, oversized grey hoodie with the hood down, a small scar through his
> left eyebrow. He slowly lifts his head toward a flickering streetlight,
> standing alone on an empty wet road at night. Close-up, static camera. Cold
> blue streetlight from above, warm sodium glow behind him. Gritty, desaturated,
> shallow depth of field, 35mm look. No music. Distant traffic and rain.
> No text, no subtitles. 6 seconds. Vertical 9:16.

## Duration — four values only

Flow generates **4, 6, 8 or 10 seconds**. Nothing else. Ask for 5 or 7 and you get something different from what you asked.

| Want | Ask for |
|---|---|
| A cut, a look, a reaction | 4s |
| One line and the response | 6s |
| Two beats of action | 8s |
| A full beat with movement | 10s |

Final cuts are 2–4s, so **generate longer than you need and trim**. Never generate the exact length you intend to cut to — you need handles on both ends.

**Longer than 10s:** extend an existing clip in **10-second steps, up to 40 seconds**. State what happens next; the model continues from where it stopped.

## What Omni already knows

Don't over-explain. The model has world knowledge and reads intent.

- **Framing and motion** — name the size and one move: "medium, slow push in". Not "cinematic camera work".
- **One continuous take** — "oner" or "one continuous shot" is understood.
- **Complex action** — describe it once; it carries the action across the scene. No frame-by-frame.
- **Style transformation** — "same motion, risograph print look" works, and keeps the blocking.
- **Storyboard input** — attach a board with key beats and it follows the sequence.
- **Text rendering** — Latin text can be placed and styled. **Malayalam, Tamil and Devanagari still garble** — never ask for them; add text in the edit.

## Sound clauses

Three layers, in this order, in every prompt:

1. **Dialogue** — verbatim native line, then the locked voice descriptor
2. **Ambience** — room tone, always. Never leave it blank.
3. **Effects** — one per visible action: door, car, thunder, footsteps, phone.

Then the music clause. If the project chose **no music**, end with `No music.` If it chose music, name genre, tempo and instrumentation with `no vocals`. The decision is per episode, never per shot.

## Paste the bible verbatim

The description comes from `bible/characters.md` **byte for byte**. No synonyms, no shortening, no reordering. Small wording changes read as a different person. This is the entire point of the bible.

Same for locations: paste, don't paraphrase.

## Reference tokens

When a shot uses uploaded media, name it explicitly:

| Token | Meaning |
|---|---|
| `<image>` / "this image" | The attached still |
| `<video>` | The attached clip |
| `<audio>` | The attached audio |

With multiple references, assign roles:

> Apply the pose and motion from `<video>` to the character in `<image>1`.
> Keep the face from `<image>1`. Use the lighting style of `<image>2`.

Rules:
- **Upload order matters.** State it: "upload character.png first, then road.png."
- Video references are limited to about **3 seconds**. Trim before uploading.
- More than 3 references rarely helps.

## Task modes

Declare one per shot. Flow infers from context, but naming it keeps shots consistent:

| Task | When |
|---|---|
| `text_to_video` | Pure generation, no references |
| `image_to_video` | One still becomes motion |
| `reference_to_video` | Character / location / style references |
| `first/last frame` | Bridge two approved stills — orbits, loops, transitions |
| `extend` | Continuing an existing clip, in 10s steps |
| `edit` | Changing an already-generated clip |

Google's guidance: prompt first, use `task` when the model guesses wrong or the mode must be locked.

## Audio is part of the prompt

Omni generates audio natively, including speech in many languages. Silent-feeling output is usually a prompt problem.

Always specify:

- **Dialogue** — the exact line, in the project language, in native script, and who says it
- **Voice** — the locked descriptor, verbatim, for any shot with speech
- **Ambience** — room tone, weather, crowd, traffic
- **Effects** — sounds tied to the action

```text
He says in Malayalam: "അമ്മേ, എനിക്ക് പേടിയാകുന്നു."
Voice: low, warm, unhurried; Malayalam with a Thrissur accent.
```

Dialogue and voice go **before** ambience. Clauses at the end of a long prompt get dropped first.

For a non-English project, never translate the line into English and never romanise it — see `language.md`.

And what you *don't* want:

> No music. No voiceover. Only rain and one passing car.

Negatives are unusually effective. Use them for: no music, no text, no subtitles, no logo, no extra people, no camera shake, no slow motion.

## Resolution strategy

| Use | Resolution |
|---|---|
| Testing a look | `360p` |
| Approved shot | `720p` |
| Final, hero shots | `1080p` |
| Only if it must be pristine | `4k` |

Draft cheap, upscale once. Never discover a bad shot at 4k.

## Continuity across shots

In order of reliability:

1. **Same references + verbatim description** — default, costs nothing.
2. **First/last frame** — feed the previous shot's final frame as the new shot's first frame. Use when a face or a prop must not change. Also the tool for orbits, loops and match cuts.
3. **Extend** — one continuous action longer than 10 seconds. Up to 40s, in 10s steps.
4. **Reference video** — for motion, not identity. Roughly 3 seconds; trim before uploading.

For `edit`, the model is stateful — describe only the change:

> Make the violin invisible. Keep everything else identical.

Never regenerate to fix a small thing. Edit the clip you have; it keeps the face.

## Writing style

**One paragraph. Plain prose. Nothing else.**

The block the user pastes contains no headings, no labels, no field prefixes, no bullets. Just sentences, in the fixed order, ending with the duration and the ratio.

- **Concrete nouns over adjectives.** "Grey hoodie" beats "casual clothes".
- **One action, present tense.** "He lifts his head."
- **Name the light source**, not the mood. "Sodium streetlight from above" beats "moody".
- **Cut adverbs** unless they change timing.
- **90–130 words of detail.** Every shot carries the locked description, the action, the place, the camera, the light, the style, the dialogue with voice, the ambience with effects, the negatives, the duration and the ratio. If it runs long, cut adjectives, not facts.
- **No internal line breaks.** A wrapped paragraph is fine; a list is not.
- **Nothing to edit.** No placeholders, no field labels, no "insert name here".
- **State the duration explicitly.** "6 seconds."

## Failure modes

| Symptom | Cause | Fix |
|---|---|---|
| Face changes between shots | description reworded | paste bible verbatim |
| Character morphs into the background | reference roles unclear | say which image is face, which is place |
| Unwanted text appears | not negated | add "no text, no subtitles" |
| Garbled non-Latin text | asked the model to render it | no text; add it in the edit |
| Music you didn't ask for | not negated | add "no music" |
| Two actions in one clip | shot too big | split the shot |
| Clip is the wrong length | asked for 3, 5, 7 or 9 seconds | 4, 6, 8 or 10 only |
| Lip sync drifts | line too long for the duration | shorten the line or move to 8–10s |
| Hands look wrong | fine motor work | reframe on face or object |
| Dead first second | started from rest | start mid-action |
| Human appears in an animal cast | not negated | "no humans, no people" in every prompt |
| Subject too small / too wide | wrong aspect grammar | see the shot-grammar file for your ratio |

## Deliverable format

Per shot: a few lines of metadata for the user, then **one plain paragraph** for Flow. Everything above the block is a note; everything inside it is the prompt.

````markdown
### Shot 03

**Duration:** 6s (cut to 3s) · **Task:** `reference_to_video`
**Upload:** `refs/arjun-sheet.png`, `refs/bedroom-night.png`
**Resolution:** 720p · **Aspect:** 9:16
**Continues from:** shot 02 final frame

```
Arjun, 17, thin, dark brown skin, sharp jaw, short black hair with a faded undercut, an oversized grey hoodie with the hood down, and a small scar through his left eyebrow, stands at the window and slowly lifts his head. A small bedroom at night, cold blue moonlight from the left, rain running down the glass. Close-up, slow push in. Gritty, desaturated, 35mm, shallow depth of field. No dialogue. No music. Rain on tiles and a ceiling fan ticking. No text, no subtitles, no logo, no watermark. 6 seconds. Vertical 9:16.
```

**Expect:** eyes fill the frame by the end; stable enough to cut on.
````

No line breaks inside the block. No labels. Nothing for the user to assemble — they copy the paragraph and paste it.

The `Expect` line matters — it's how the user judges the take without you.
