# Format — Trailer / teaser

Sells a film that may not exist. Withholds by design.

## At a glance

| | |
|---|---|
| **Aspect** | 16:9 |
| **Length** | 30–90s (teaser 15–30s) |
| **Shots** | 20–40, many under 1s |
| **Structure** | three movements + title |
| **Shot grammar** | `core/shot-grammar-horizontal.md` |

## Structure

| Movement | Time (90s) | Job |
|---|---|---|
| **I. Setup** | 0:00–0:25 | World, character, one line of premise. Slow. |
| **II. Escalation** | 0:25–0:55 | Rhythm builds. Stakes stated. Cuts shorten. |
| **III. Montage** | 0:55–1:20 | Fastest cuts, biggest images, no plot |
| **Title** | 1:20–1:30 | Title card, release line, one final image |

Teaser (30s): 0–8 world · 8–20 escalation · 20–27 montage · 27–30 title.

## The rules of withholding

- **Never resolve.** Show the problem, never the answer.
- **One clear premise line.** The rest is texture.
- **Don't explain the twist** — show the consequence of it.
- **The best shot goes last**, right before the title.
- **One silence** before the biggest hit. A trailer with no quiet has no loud.

## Trailer grammar

| Device | Use |
|---|---|
| **Hard cut to black** | Punctuation. Twice maximum. |
| **Sound drop** | Before the biggest image |
| **Title cards** | Max 3, under 6 words, one idea each |
| **Riser** | Into the montage |
| **Final sting** | One frame + one sound after the title |

## Text

- Title cards are **separate beats**, not overlays. Budget a shot each.
- Font and treatment locked in `project.md` — a trailer's typography is half its identity.
- Release line: date, platform, or "coming soon".

## Building it from an existing project

If the film exists, the trailer is an **edit**, not new generation — pick from existing shots and generate only what's missing (usually the biggest image and the title card).

If it doesn't exist, generate only the trailer's shots. You do **not** need the film first, and the trailer is a legitimate way to test whether the film is worth making.

## Deliverable deltas

- `plan.md` → three movements with the beats and the silence marked
- `storyboard.csv` → many sub-1s rows; `duration` may be under 1s
- `caption.md` → title card text, release line, thumbnail

## Failure modes

1. Telling the whole story — it becomes a summary, not a trailer
2. Uniform cut rate — no escalation
3. Title card at the start
4. Music with no dynamic range
5. Best image buried in the middle
