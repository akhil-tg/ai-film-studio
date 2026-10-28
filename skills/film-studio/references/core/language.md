# Language

Read before writing any dialogue or on-screen text, for any project not in English.

**Language is chosen at Step 0**, before format. It is never inferred late, and never changed mid-project.

## The rule

**Prompts are English. Dialogue is not.**

Every instruction, camera note, lighting description, and style clause is written in English. That's what the model is strongest at. But any spoken line is quoted **verbatim in the project language, in native script**, inside the prompt.

```
Arjun says in Malayalam: "അമ്മേ, എനിക്ക് പേടിയാകുന്നു."
```

Never translate a line into English inside a prompt. Never romanise it for the model — native script carries pronunciation. (Romanisation belongs only in your own notes, or for a non-native voice actor.)

## Why this split

| Component | Language | Reason |
|---|---|---|
| Scene, action, camera, lighting, style, negatives | English | best model comprehension |
| Spoken dialogue | **project language, native script** | correct pronunciation and lip sync |
| On-screen text | **project language** | it's for the audience |
| File names, shot IDs, structure | English | tooling |
| Your notes and the brief | English | you have to read them |

## What the user reads vs what the model reads

The user may not read the model's prompt easily. So `script.md` carries each line twice:

```
SHOT 04 · 6s · medium
ARJUN
അമ്മേ, എനിക്ക് പേടിയാകുന്നു.
("Amma, I'm getting scared.")
```

The native line is what goes into Flow. The English paraphrase is for the user, and for the edit.

## Voice is locked like a face

Each generation is independent, so the **voice drifts** between clips — timbre, accent, pace. Fix it the same way as faces: a fixed descriptor, pasted verbatim.

```
Voice: low, warm, unhurried; <language> with a <region> accent;
speaks slightly under the breath.
```

Put it in `characters.md` and in the prompt for any shot where the character speaks. Never vary the wording.

## Subtitles: off by default

Most projects in a local language are aimed at speakers of that language. Don't add subtitles unless the user asks.

- **No subtitle track** unless requested.
- **On-screen text is fine** — a hook card is not a subtitle. Keep it to the opening and any beat that must land silently.
- If the user later wants reach beyond their language, the edit can add subtitles afterwards without regenerating anything. That's the cheap moment to decide.

## Per-language files

| Language | File |
|---|---|
| Malayalam | `references/languages/malayalam.md` |

For a language with no file: the rules above still apply. Tell the user plainly that you can't guarantee accent accuracy, and offer to lock a voice descriptor and test one shot before committing to a full episode.

## Speech budget

Speech takes runtime. Roughly **2.5–3 words per second** in Malayalam, so:

| Runtime | Usable dialogue |
|---|---|
| 30s | 8–12s of speech |
| 60s | 15–25s |
| 3 min | 45–75s |

More than that and the piece becomes radio with pictures.
