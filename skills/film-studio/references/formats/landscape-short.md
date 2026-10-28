# Format — Landscape short film (16:9)

The first format with real acts. 3–15 minutes.

## At a glance

| | |
|---|---|
| **Aspect** | 16:9, 1920×1080 |
| **Length** | 3–15 min |
| **Shots** | 20–100, cut to 3–6s average |
| **Sequences** | 4–12 |
| **Generations** | 25–90 clips — this is a budget conversation |
| **Shot grammar** | `core/shot-grammar-horizontal.md` |
| **Structure** | three acts, sequence-led |

## Structure

| Act | Share | Job | Ends on |
|---|---|---|---|
| **I** | 25% | Want, obstacle, world | A decision |
| **II** | 50% | Escalation + midpoint flip | The lowest point |
| **III** | 25% | Confrontation, change | The answer |

**Sequences are the real unit** — 1–3 minutes each, with their own want, obstacle, and turn. If you can't summarise a sequence in one sentence containing a turn, it's padding.

Plan in `plan.md`:

```
SEQ01 · 2:10 · Arjun finds the phone        · turn: date is tomorrow
SEQ02 · 1:45 · He tests it                  · turn: it's always right
SEQ03 · 2:30 · He tries to change it        · turn: changing it causes it
```

## Shot budget reality

At 10s per generation, a 10-minute film is ~60+ clips before retries. Expect **2–3 attempts per shot** — so 150–200 generations.

Tell the user this at planning time, not at shot 40. Offer: cut to 5 minutes, or accept the cost.

## Coverage

You cannot reframe a generated clip, so every angle is a separate generation. Budget for dialogue scenes:

- Master (1), over-the-shoulders (2), singles (2), inserts (2–3), reactions (1–2)

That's ~9 clips for a 60-second conversation.

## Titles and credits

- **Title** — after the last beat of Act I, or at the very end. Never at the start.
- **Credits** — end card, 5s, static, legible.
- **Subtitles** — bottom-centre, above the progress bar.

## Deliverable deltas

- `plan.md` → act structure + sequence list with turns
- `storyboard.csv` → add a `sequence` column
- `caption.md` → title, thumbnail frame, description, end-card text

## Failure modes

1. Writing a 10-minute film for a 3-minute budget
2. No establishing shot, so the audience is lost by Act II
3. Act II made of scenes that repeat rather than escalate
4. Dialogue carrying the story instead of images
5. Title card at the start — everyone leaves
