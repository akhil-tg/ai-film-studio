# Shot grammar — vertical (9:16)

Read before building a storyboard for any vertical format: 1080×1920.

## The frame is a portrait, not a cropped landscape

Two consequences:

- **Horizontal space is scarce.** Two people side by side barely fit. Stage *front-to-back*, not left-to-right.
- **Vertical space is free.** Full-body shots, tall architecture, falling, rising, stairs, ladders, and overheads all work cheaply.

Never design a shot that needs a wide horizontal frame. "The two of them walk down the street" is landscape writing.

## Safe zones

Platforms overlay the frame. Numbers vary slightly; these are safe:

| Zone | Height | Rule |
|---|---|---|
| Top | ~250px | No faces, no text. Username, UI, notch. |
| Middle | ~1300px | All key content |
| Bottom | ~350px | No text. Caption, buttons, progress bar. |

The most common reason AI vertical video looks amateur: a good face, cropped in half by the caption.

Rule: **eyes in the upper third of the safe band; never put text over a face.**

## Shot sizes

| Size | Vertical use |
|---|---|
| **Extreme close-up** | Eyes, hands, objects. The workhorse. |
| **Close-up** | Face, emotion. Fills the frame. |
| **Medium** | Waist up. Default for dialogue. |
| **Medium-full** | Knees up. Posture and place. |
| **Full shot** | Full body, small headroom. |
| **Wide / establishing** | Weakest vertically. Only with vertical interest — tower, doorway, staircase. |

Rough ratio: **40% close, 30% extreme close, 20% medium, 10% wide.**

## Camera moves — one per shot

| Move | Use |
|---|---|
| **Static** | Default. Most shots should be still. |
| **Push in** | Realisation, dread. |
| **Pull out** | Reveal, isolation. |
| **Tilt up / down** | Reveals height — natural for vertical. |
| **Crane up** | Scale, crowds. |
| **Handheld follow** | Urgency. |
| **Whip pan** | Transition only, between two shots. |

Never combine moves. "Whip pan then push in" is unrenderable.

## Action

- **One action per shot.** "He opens the door" — not "opens, looks, sits."
- **Start mid-action.** Dead air at the start wastes your trim.
- **End on a stable frame** so the cut lands.
- **Avoid fine hand work.** Buttons, laces, instruments, typing still fail. Cut away.

## Transitions

Mostly **hard cuts**. To make them feel intentional:

- **Match cut** — same framing, different subject
- **Cut on action** — cut mid-movement
- **First/last frame interpolation** — for shots where a character must not change
- **Sound bridge** — next scene's audio starts before the picture cuts

## Text on screen

- Max ~6 words per card.
- Inside the safe band, usually the lower third of the *safe* area.
- High contrast: white with soft shadow, or a solid bar.
- One style for the whole project — locked in `project.md`.

## Lighting

Vertical is watched at arm's length, outdoors, often at low brightness.

- **Key light on the face, always.** A dark moody frame reads as a broken phone.
- Avoid full-white backgrounds — the subject disappears.
- One practical light in frame (lamp, window, screen) reads instantly as "shot by a person".
- Keep eyes lit, even at night.

## Storyboard columns

`shot, beat, start, end, duration, shot_size, camera_move, subject_action, setting, lighting, audio, task, refs, prompt`

A shot without a `prompt` is a shot that never gets made.
