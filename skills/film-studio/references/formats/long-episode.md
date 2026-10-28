# Format — Long-form episode (16:9, episodic)

A series with acts. 5–20 minutes per episode.

## At a glance

| | |
|---|---|
| **Aspect** | 16:9, 1920×1080 |
| **Length** | 5–20 min per episode |
| **Shots** | 60–200 per episode |
| **Structure** | teaser + 3–4 acts |
| **Generations** | 100–300 per episode — the most expensive format here |
| **Shot grammar** | `core/shot-grammar-horizontal.md` |

## Structure

**Teaser (0:00–1:30)** — a cold open that poses the episode's question. Often the strongest scene, out of order.

**Then 3–4 acts**, each ending on a turn:

| Act | Share | Ends on |
|---|---|---|
| Teaser | 10% | The question |
| Act I | 25% | A complication |
| Act II | 30% | A reversal |
| Act III | 25% | The low point |
| Act IV | 10% | Resolution + new question |

**A/B story:** the A story is the episode's problem; the B story is a relationship that changes underneath it. They must meet in the final act. Without a B story, episodes feel like procedurals.

## Episode vs season

| Level | Holds |
|---|---|
| `plan.md` → season arc | The question the season answers |
| `plan.md` → episode table | What each episode does to that question + its hook |
| `epNN/story.md` | This episode's teaser, acts, A/B, turn |

Every episode must **change the answer** to the season question. If it ends where it started, it's a filler episode.

## Production reality

At this length you are managing a production, not a video:

- **Shot reuse** — build a small library of establishing shots and reuse them across episodes. Cheaper and improves continuity.
- **Locations** — limit to 3–5 per season. Every new location is a new reference image and a new consistency risk.
- **Cost** — expect 200+ generations per episode with retries. Plan the season, then cut it in half.

## Deliverable deltas

- `plan.md` → season arc, episode table with hooks, A/B per episode
- `epNN/story.md` → teaser, acts, A/B intersection
- `storyboard.csv` → `sequence` column required
- `continuity.md` → track props, wardrobe, timeline per episode, and the reusable shot library

## Failure modes

1. No B story — episodes feel episodic and disposable
2. Every episode restates the premise instead of advancing it
3. New location every episode — consistency collapses and cost explodes
4. Act II with no reversal, only more of Act I
5. Teaser that spoils the episode rather than posing its question
