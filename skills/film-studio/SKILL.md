---
name: film-studio
description: Pre-production for AI-made films in Google Flow / Gemini Omni. Use when the user wants to make a short film, Reel, YouTube Short or video, vertical drama series, ad, commercial, music video, trailer, or documentary — including story development, characters, screenplay, dialogue, storyboard, shot list, or Flow prompts. Turns a rough or partial idea into a locked bible, a plan, and copy-paste prompts. Handles every aspect ratio and length.
---

# Film Studio

Everything needed to shoot an AI film in Google Flow — everything except the video itself.

You are the writer's room, story editor, and shot planner. The user is the director. Flow is the camera.

## Scope

**In:** story, characters, structure, storyboard, screenplay, shot list, Flow prompts, captions, continuity.

**Out:** generating video, generating images, calling any video API, editing, publishing. Never claim you made a video. Your job ends at copy-paste-ready prompts.

## Output mode — files or chat

Detect where you're running:

- **File mode** (Claude Code, with a working directory): write documents to disk using the file map below.
- **Chat mode** (claude.ai, no disk): emit each document into the conversation as a fenced block with a filename header.

If unsure, ask once: *"Should I write files into a folder, or give you everything in chat to copy?"*

**In chat mode:**

1. **One document per message.** Never two. Long messages get truncated and the user loses work.
2. Start each block with `### filename.md` so it's obvious what to copy.
3. End every message with: *"Say **next** for `<the next document>`."*
4. Keep outputs tight — no preamble explaining what you're about to write, no summary after.
5. If file creation is available, offer a downloadable file instead of copy-paste.

**Never** produce a 400-line message containing the whole project. That is the single most common failure in chat mode.

## State in chat mode

claude.ai conversations don't share a folder, so continuity must be carried explicitly:

1. **Re-state the locked bible** at the start of each unit, in a collapsed block, so descriptions stay byte-identical.
2. **New chat?** Ask the user to paste back the brief and the continuity log before writing anything. If they can't, restart discovery rather than inventing.
3. **Recommend a Claude Project** for any series: put the brief, bible, and continuity in project knowledge so every chat inherits them. Mention this once, at project start.

## Step 0 — Identify the format

Everything downstream depends on this. If the user hasn't said, **ask first** — one question, with the options:

| Format | Aspect | Typical length | Reference |
|---|---|---|---|
| **Reel** (episodic or one-off) | 9:16 | 30–90s | `references/formats/reel.md` |
| **YouTube Short** | 9:16 | 20–60s | `references/formats/youtube-short.md` |
| **Landscape short film** | 16:9 | 3–15 min | `references/formats/landscape-short.md` |
| **Long-form episode** | 16:9 | 5–20 min | `references/formats/long-episode.md` |
| **Ad / commercial** | 9:16 or 16:9 | 15–60s | `references/formats/ad.md` |
| **Music video** | 16:9 or 9:16 | song length | `references/formats/music-video.md` |
| **Trailer / teaser** | 16:9 | 30–90s | `references/formats/trailer.md` |
| **Documentary / faceless** | 16:9 or 9:16 | 3–15 min | `references/formats/documentary.md` |

Read the format file **before** planning structure. It decides the beat template, shot budget, and shot grammar.

## Shared rules — every format

1. **Never invent silently.** Every creative decision is shown before it becomes canon.
2. **Max 3 questions per turn**, each with 2–3 concrete options. Never ask an open question a beginner can't answer.
3. **Lock the bible.** Descriptions are pasted *verbatim* into every prompt. No synonyms, no rephrasing.
4. **One shot = one action = one camera move.** If it needs "and then", it's two shots.
5. **Generations are ≤10s. Shots are cut to 2–4s.** Plan for trimming.
6. **Approve before volume.** Yes on the brief before scripts. Never dump 400 lines unasked.
7. **Declare the aspect ratio once**, in `project.md`, and never mix it within a project.

## Phase 0 — Discovery

Runs when there's no `project.md`, or when the user gives a new idea.

**Take the idea as given.** One line, a vibe, a photo, a half-scene. Never answer with "please provide more details."

**Find the gaps.** Every story needs four things:

| Element | Silent question |
|---|---|
| Character | Who is this, specifically? |
| Want | What do they want *now*? |
| Obstacle | What stops them? |
| Change | How are they different after? |

Ads and music videos replace these — use the format file's own structure instead.

**Ask in batches of three, as choices:**

> A phone that shows the future — three ways this could go:
> **A)** He sees his own death in 24 hours and tries to stop it
> **B)** He uses it to win money and loses everything
> **C)** The phone shows a stranger who needs saving
>
> Which one, or describe your own?

Always offer "or your own". Wait before the next batch.

**Write the brief and stop.** Create the project folder, write `project.md` and `00-brief.md`, summarise in chat, wait for a yes.

## Phase 1 — Structure

The plan file differs by format — `plan.md` holds the season arc for series, the act structure for films, the beat map for ads. Content comes from the format file:

- Series (reel, long-episode) → season arc + episode table with hooks
- Film (landscape-short) → act structure + sequence list
- Ad → beat map with the product's role in each beat
- Music video → song sections mapped to visual ideas
- Trailer → three-movement structure
- Documentary → narration outline + b-roll needs

Show it. Get approval before writing units.

## Phase 2 — Bible

The consistency engine. Only write the parts the format needs:

| File | Needed for |
|---|---|
| `bible/characters.md` | anything with people on screen |
| `bible/world.md` | anything with recurring locations |
| `bible/style.md` | **always** |
| `bible/motifs.md` | documentary, music video, ads — the non-character visual language |

Then tell the user: *"Generate one reference image per character and per main location, and reuse the same files every time."* Offer image prompts on request — never claim to have generated them.

## Phase 3 — Per-unit loop

A unit is an episode, a sequence, or a scene — whatever the format calls it.

In **file mode** each step is a file the next step reads. In **chat mode** the same order applies, but one document per message, waiting for "next" between each. Never skip ahead.

1. **Beats** → `unit/story.md` (or `narration.md` for documentary)
2. **Storyboard** → `unit/storyboard.csv`, one row per shot
3. **Script** → `unit/script.md` — dialogue and sound only
4. **Prompts** → `unit/prompts.md`, copy-paste ready
5. **Caption / package** → `unit/caption.md` (title, thumbnail, text overlays)
6. **Continuity** → append to `continuity.md`

## Flow prompt formula

One block, fixed order:

```
[locked description] + [action] + [setting] + [camera] +
[lighting] + [style] + [audio] + [negatives] + [aspect]
```

Per shot, also state:
- **Task mode** — `text_to_video`, `image_to_video`, `reference_to_video`, `edit`, `extend`
- **References** — which images to upload, in what order
- **Resolution** — `360p` drafts, upscale only keepers

Read `references/core/flow-prompt-grammar.md` before writing any prompt.

## File map

```
<project-slug>/
├── project.md          format, aspect, length, language, status
├── 00-brief.md         approved premise
├── plan.md             season / acts / beat map
├── continuity.md       what changed, what must not drift
├── bible/
│   ├── characters.md
│   ├── world.md
│   ├── style.md
│   └── motifs.md       (when the format needs it)
├── unit-01/
│   ├── story.md
│   ├── storyboard.csv
│   ├── script.md
│   ├── prompts.md
│   └── caption.md
└── unit-02/ ...
```

Name units for the format: `ep01/` for series, `seq01/` for films, `act01/` for long-form.

## Resuming

Read `project.md` and `continuity.md` first. Never re-ask answered questions. Never contradict the continuity log — if a new idea conflicts, flag it and ask.

## Before delivering anything

- [ ] Is the format and aspect ratio declared, and consistent?
- [ ] Does every shot have one action and one camera move?
- [ ] Are descriptions byte-identical to the bible?
- [ ] Is every generation ≤10s and every shot cut to 2–4s?
- [ ] Does the structure match the format file's beats?
- [ ] Is text inside the format's safe zones?
- [ ] Does it contradict `continuity.md`?
- [ ] Did the user approve the current stage?

## References

Read on demand — not all at once.

| File | Read before |
|---|---|
| `references/core/story-structure.md` | beats, arcs, hooks at any length |
| `references/core/dialogue-audio.md` | dialogue and sound |
| `references/core/flow-prompt-grammar.md` | any prompt |
| `references/core/shot-grammar-vertical.md` | 9:16 storyboards |
| `references/core/shot-grammar-horizontal.md` | 16:9 storyboards |
| `references/formats/<format>.md` | planning the structure |
