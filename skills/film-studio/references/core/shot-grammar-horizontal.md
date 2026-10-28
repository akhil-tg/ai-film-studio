# Shot grammar — horizontal (16:9)

Read before building a storyboard for any landscape format: 1920×1080.

## The frame is a stage

16:9 is wide. That changes staging, not just cropping:

- **Two people fit side by side.** Use the width for relationships: distance means emotional distance.
- **Negative space on one side is a composition tool**, not waste.
- **Wide shots carry meaning** — scale, isolation, environment. They're allowed here; they aren't in vertical.
- **Vertical space is limited.** Full-body shots need distance, and headroom must be watched.

## Horizontal traps

| Trap | Why | Fix |
|---|---|---|
| Everything centred | flat, TV-commercial look | rule of thirds, subject at 1/3 or 2/3 |
| Talking heads only | no visual rhythm | intercut wides, inserts, reactions |
| No establishing shots | audience loses geography | one wide per location, early |
| Dead centre eyelines | no relationship | over-the-shoulder for dialogue |
| Flat lighting | reads as video, not film | one directional key, shape the shadow |

## Shot sizes

| Size | Use |
|---|---|
| **Extreme wide** | Scale, isolation, landscape. Landscape-only luxury. |
| **Wide / establishing** | Geography. Required at each new location. |
| **Full shot** | Body language, action |
| **Medium** | Dialogue default |
| **Medium close-up** | Emotion with context |
| **Close-up** | Emotion |
| **Extreme close-up** | Detail, insert, punctuation |

Rough ratio for dialogue scenes: **1 wide, then alternating medium and close**, plus inserts.

## Coverage — the part beginners skip

A scene isn't one camera angle. Build it from:

1. **Master** — the whole scene wide, establishes geography
2. **Over-the-shoulders** — A on B, B on A
3. **Singles** — clean close-ups of each
4. **Inserts** — hands, objects, details
5. **Reaction shots** — the listener, not the speaker

For AI generation this matters more than in live action, because **you can't reframe**. Every angle is a separate generation. Budget for it: a two-person dialogue scene is 6–10 clips for 45 seconds.

## Camera moves

| Move | Use |
|---|---|
| **Static** | Default |
| **Slow push in** | Realisation |
| **Dolly / track** | Following, unease |
| **Crane / jib** | Reveal, scale |
| **Pan** | Geography, following action |
| **Handheld** | Urgency, realism |
| **Whip pan** | Transition |

Same rule: **one move per shot.** Horizontal moves (pan, dolly) work well here; use tilt sparingly.

## Composition

- **Rule of thirds** — subject on a third line, not centred.
- **Leading lines** — roads, corridors, tables pull the eye.
- **Frame within a frame** — doorways, windows.
- **Depth** — foreground element, subject, background. Two planes read as flat video.
- **Eyeline room** — give space in the direction the character looks.

## Pacing by runtime

| Runtime | Average shot length |
|---|---|
| 30–60s | 2–4s |
| 3 min | 3–6s |
| 10 min | 4–8s |
| 20 min | 5–10s |

Vary it. Three fast shots then one long hold is a rhythm; uniform cuts are a metronome.

## Transitions

- **Hard cut** — default
- **Cut on action** — invisible, professional
- **Match cut** — thematic
- **Fade to black** — act breaks only. Rarely anything else.
- **First/last frame interpolation** — for continuity across generated clips

Avoid wipes and other "effects" transitions — they read as amateur.

## Safe areas

16:9 has generous margins, but still:

- Keep critical action out of the outer **5%** — players crop
- Leave ~10% top and bottom clear if the piece may be reposted vertically
- Subtitles: bottom-centre, above the player's progress bar

## Storyboard columns

Same as vertical:

`shot, beat, start, end, duration, shot_size, camera_move, subject_action, setting, lighting, audio, task, refs, prompt`

Add a `sequence` column for anything over 3 minutes.
