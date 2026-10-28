# Flow prompt grammar

Reference for writing any `prompts.md`. Read before producing prompts.

## Prompt order

Fixed. Same sequence every time, so results are comparable and debuggable:

```
[locked description] + [action] + [setting] + [camera: size + move] +
[lighting] + [style] + [dialogue + voice] + [ambience + effects] +
[negatives] + [aspect]
```

Example:

> Arjun, 17, thin, dark brown skin, sharp jaw, short black hair with a faded
> undercut, oversized grey hoodie with the hood down, a small scar through his
> left eyebrow. He slowly lifts his head toward a flickering streetlight,
> standing alone on an empty wet road at night. Close-up, static camera. Cold
> blue streetlight from above, warm sodium glow behind him. Gritty, desaturated,
> shallow depth of field, 35mm look. No music. Distant traffic and rain.
> No text, no subtitles. Vertical 9:16.

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
| `edit` | Changing an already-generated clip |
| `extend` | Continuing an existing clip |

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

1. **Same references + verbatim description** — default, costs nothing.
2. **First/last frame interpolation** — feed the previous shot's final frame as the new first frame. Use when a character must not change.

For `edit`, the model is stateful — describe only the change:

> Make the violin invisible. Keep everything else identical.

## Writing style

- **Concrete nouns over adjectives.** "Grey hoodie" beats "casual clothes".
- **One action, present tense.** "He lifts his head."
- **Name the light source**, not the mood. "Sodium streetlight from above" beats "moody".
- **Cut adverbs** unless they change timing.
- **Stay under ~120 words.** Beyond that, models drop clauses — usually audio first.

## Failure modes

| Symptom | Cause | Fix |
|---|---|---|
| Face changes between shots | description reworded | paste bible verbatim |
| Character morphs into the background | reference roles unclear | say which image is face, which is place |
| Unwanted text appears | not negated | add "no text, no subtitles" |
| Music you didn't ask for | not negated | add "no music" |
| Two actions in one clip | shot too big | split the shot |
| Hands look wrong | fine motor work | reframe on face or object |
| Dead first second | started from rest | start mid-action |
| Subject too small / too wide | wrong aspect grammar | see the shot-grammar file for your ratio |

## Deliverable format

One block per shot:

````markdown
### Shot 03 — close-up, push in (3s)

**Upload:** `refs/arjun.png`
**Task:** `reference_to_video` · **Resolution:** 720p · **Aspect:** 9:16

```
Arjun, 17, thin, ... [verbatim bible] ...
He slowly lifts his head toward a flickering streetlight. Close-up, slow push
in. Cold blue streetlight from above. Gritty, desaturated, 35mm.
No music. Distant traffic, rain on metal. No text. Vertical 9:16.
```

**Expect:** eyes fill frame by the end, stable enough to cut on.
````

The `Expect` line matters — it's how the user judges the take without you.
