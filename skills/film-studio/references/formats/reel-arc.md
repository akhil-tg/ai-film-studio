# Format — Reel movie (vertical, 2–3 min episodes, one story)

A film told in vertical episodes. Not a series of shorts — one story, one cast, 10–40 episodes, watched in order.

## At a glance

| | |
|---|---|
| **Aspect** | 9:16, 1080×1920 |
| **Episode** | 2–3 min (60–90s variant allowed) |
| **Shots** | 20–28 per episode |
| **Generations** | 24–32 clips of 10s, trimmed to 2–4s |
| **Shot grammar** | `core/shot-grammar-vertical.md` |
| **Per episode** | cold open → scene → turn → cliffhanger |
| **Across series** | acts mapped to episode ranges |

## The unit is a scene, not a short film

Each episode is **one scene with one turn**. Not three mini-beats. One location, or two at most.

If the episode needs a montage to make sense, the plan is wrong, not the episode.

## Acts across episodes

Know the act breaks **before** writing episode 1. For a 24-episode film:

| Act | Episodes | Job |
|---|---|---|
| 1 | 1–6 | establish, inciting incident by ep 2, first turn at the break |
| 2 | 7–12 | complications; midpoint reversal around ep 12 |
| 3 | 13–18 | consequences; low point at the break |
| 4 | 19–24 | resolve; the final image mirrors the first |

Scale the ranges to the episode count — keep the **proportions**, not the numbers. A 12-episode film is 3 per act; a 40-episode film is 10.

## Episode anatomy (120s)

| Time | Beat | Job |
|---|---|---|
| 0–5s | Cold open | An image or a line that needs no context. Never a recap. |
| 5–15s | Re-orient | Who, where, what's at risk. One line, one shot. |
| 15–85s | Scene | Want meets obstacle, escalate twice |
| 85–110s | Turn | Something changes that can't be undone |
| 110–120s | Cliffhanger | A question — never a summary |

**60–90s version:** drop re-orient to a single shot, turn at 45–60s, cliffhanger in the last 5s.

## The dual audience

Every episode must work for two people at once:

- **Newcomer** — the cold open lands with zero context
- **Returning viewer** — the episode advances the arc

Never open with "previously". Never explain the past in dialogue. Use an image that *implies* it: a bandaged hand says more than a sentence about the fight.

If a viewer needs a recap to follow, an earlier episode failed.

## Cliffhanger taxonomy

| Type | Where | Example |
|---|---|---|
| **Question** | any episode | "Who sent this?" |
| **Interruption** | mid-act | The door opens |
| **Reversal** | act breaks | An ally betrays them |
| **Deadline** | act 3 | "You have one day" |
| **Reveal** | finale setup | A photo that reframes everything |

Never use the same type twice in a row. Never end on a summary of what just happened.

## Episode 1 is a standalone film

If nobody returns, episode 1 still has to be satisfying. Give it the whole shape — want, obstacle, change — then the cliffhanger on top. A pilot that only sets up is a pilot nobody watches twice.

## Shot and dialogue budget

| Episode | Shots | Generations | Dialogue |
|---|---|---|---|
| 60s | 12–16 | 14–18 | 10–18s |
| 90s | 16–22 | 18–24 | 18–28s |
| 120s | 20–28 | 22–30 | 25–35s |
| 180s | 28–36 | 30–40 | 40–55s |

Generations are ≤10s; shots cut to 2–4s. Budget retries at roughly 1.3× the clip count.

## Production order

- **One episode at a time, in order.** Later episodes inherit the look, the voice, and the wardrobe of earlier ones.
- **Finish and publish episode 1 before writing episode 3.** Audience reaction is free information.
- **Never batch-generate five episodes.** Drift compounds, and you can't fix an established face retroactively.

## What kills a vertical film series

1. Episode 2 that only explains episode 1
2. Filler — a scene with no turn
3. Recap openings
4. Escalation without consequence — nothing changes for anyone
5. New characters after ep 5 that weren't seeded earlier
6. Cliffhanger fatigue: every episode ends on a scream, so none land
7. No known act breaks, so the middle sags for eight episodes

## Deliverable deltas

- `story.md` holds the act map and the one-line episode index — it's the resume file
- `continuity.md` holds only what never changes: faces, voices, wardrobe, rules
- Every episode's prompts repeat the same locked blocks, verbatim
