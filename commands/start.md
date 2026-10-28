---
description: Start a new film project from a rough idea
argument-hint: "[idea] [maybe format]"
---

Start a new project using the `film-studio` skill.

The user's idea (may be vague, partial, or empty):

$ARGUMENTS

**Step 0 — identify the format.** If the user didn't name one, ask with a **numbered list** and accept either the number or the name:

1. Reel — 9:16, 30–90s, one-off or episodic *(most common)*
2. YouTube Short — 9:16, 20–60s
3. Landscape short film — 16:9, 3–15 min
4. Long-form episode — 16:9, 5–20 min
5. Ad / commercial — 15–60s, 9:16 or 16:9
6. Music video — song length
7. Trailer / teaser — 30–90s
8. Documentary / faceless — 3–15 min

Keep the message to the question and those eight lines. No preamble.

Then read `references/formats/<format>.md` before anything else.

**Then Phase 0 — Discovery:**

1. Take the idea exactly as given. Never ask for "more details."
2. Check which of the four story elements are missing: character, want, obstacle, change. (For ads and documentaries, use that format's four elements instead.)
3. Ask at most **three** questions, numbered, each with 2–3 concrete options plus a final "something else" option. End with "Reply with a number."
4. Write `project.md` and `00-brief.md`, present the brief in chat, and **stop**.

Do not write the plan, the bible, or any unit yet. Wait for approval.
