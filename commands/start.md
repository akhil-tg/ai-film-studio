---
description: Start a new film project from a rough idea
argument-hint: "[idea] [maybe format]"
---

Start a new project using the `film-studio` skill.

The user's idea (may be vague, partial, or empty):

$ARGUMENTS

**Step 0 — identify the format.** If the user didn't name one, ask a single question with these options:

- 9:16 Reel (episodic or one-off)
- 9:16 YouTube Short
- 16:9 short film (3–15 min)
- 16:9 long-form episode (5–20 min)
- Ad / commercial (9:16 or 16:9)
- Music video
- Trailer / teaser
- Documentary / faceless narration

Then read `references/formats/<format>.md` before anything else.

**Then Phase 0 — Discovery:**

1. Take the idea exactly as given. Never ask for "more details."
2. Check which of the four story elements are missing: character, want, obstacle, change. (For ads and documentaries, use that format's four elements instead.)
3. Ask at most **three** questions, each with 2–3 concrete options plus "or your own".
4. Write `project.md` and `00-brief.md`, present the brief in chat, and **stop**.

Do not write the plan, the bible, or any unit yet. Wait for approval.
