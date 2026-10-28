---
description: Write the next unit (episode, sequence, or scene)
argument-hint: "[unit number]"
---

Write unit $1 of the current project using the `film-studio` skill.

Before writing anything:

1. Read `project.md`, `plan.md`, and `continuity.md`. Never re-ask answered questions.
2. Read `bible/style.md`, plus `characters.md` and `world.md` if the format uses them.
3. Read the format reference named in `project.md`.
4. Check that unit $1 matches `plan.md`. If it doesn't, flag the conflict and ask.

Then produce, in order, showing each stage before moving on:

1. `story.md` (or `narration.md` for documentary) — beats and the question the unit asks
2. `storyboard.csv` — one row per shot, matching the aspect's shot grammar
3. `script.md` — dialogue and the four audio layers
4. `prompts.md` — copy-paste Flow prompts, bible descriptions verbatim
5. `caption.md` — caption, title, thumbnail, on-screen text
6. Append to `continuity.md`

Never optional:

- Aspect ratio and safe zones from the format file
- Every generation ≤10s; every shot cut to 2–4s
- One action and one camera move per shot
- Character and location descriptions byte-identical to the bible
- The unit ends where the format's structure requires
