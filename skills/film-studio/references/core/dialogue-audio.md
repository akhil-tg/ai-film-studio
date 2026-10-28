# Dialogue and audio

Reference for every script file. Read before writing dialogue.

## The constraint

Speech eats runtime. A 60-second piece holds roughly **20–35 seconds of speech** — already a lot. At 3 minutes you get maybe 90 seconds of talk. At 10 minutes, dialogue must earn every line.

Rule of thumb: **for every 10 seconds of runtime, one line of dialogue.** Any more and the piece becomes a phone call with visuals.

## Rules

1. **One line per shot** at short lengths. Two lines means the shot is too long.
2. **No exposition.** A character explaining backstory is a dead scene.
3. **Cut the first and last line of every exchange.** Usually throat-clearing.
4. **Short sentences.** Under 12 words. Under 8 is better.
5. **Say it differently than expected.** "I'm not angry" while destroying something.
6. **Let silence work.** Three seconds of a face is the cheapest emotion available.

## On the page

Keep the script plain — a shooting document, not literature:

```
EP01 · SHOT 05 · 3s · close-up
ARJUN
(quiet)
You knew.

She doesn't answer. The fridge hums.
```

Parentheticals only for delivery that changes meaning. Not for mood.

## Four audio layers

Plan all four at script stage — never after.

| Layer | Source | Notes |
|---|---|---|
| **Dialogue** | Generated, or self-recorded | See the language caveat |
| **Ambience** | Generated | Room tone. Without it, cuts feel like slideshows. |
| **Effects** | Generated | One per significant action. |
| **Music** | Generated or licensed | Optional. Often better absent. |

**Every shot gets an ambience line**, even "silence, wind". Blank audio is what makes AI video feel fake.

## The language problem

AI speech is reliable in English, inconsistent in Malayalam, Tamil, Hindi, Arabic, and most others — accent, rhythm, and pronunciation drift between clips.

If the project isn't in English:

- Write dialogue **in the target language** in `script.md`.
- Plan to **record voices yourself**, or use a dedicated TTS tool.
- Generate Flow shots with **no dialogue audio**, then dub over the edit.
- Say this at discovery. It changes the whole workflow; don't reveal it at episode 4.

Prompt consequence: `No dialogue. Only ambience: ...`

## Sound-on design

Most platforms autoplay with sound, but many viewers start muted.

- The **visual** must carry the story alone.
- **On-screen text** carries the one line that matters.
- Sound adds. It never explains.

## Music

- One track per unit, not per scene.
- Enter after the hook, not during it.
- Drop out completely for the payoff line. Silence reads as importance.
- If generated, specify genre, tempo, instrumentation — and "no vocals" unless you want them fighting the dialogue.

## Mixing, without a DAW

In CapCut or similar:

1. Dialogue at −6 dB, never clipping.
2. Music at −18 dB under dialogue, −10 dB alone.
3. Ambience at −24 dB, constant.
4. Effects peak at −6 dB, short.
5. Fade music over the last 0.5s, or cut it hard on a cliffhanger.

## Script file format

```markdown
# EP01 — <title>

Runtime target: 60s · Shots: 8 · Language: Malayalam

## SHOT 01 · 2s · extreme close-up
AUDIO:
  AMB: rain on tin roof
  SFX: phone vibrates once

## SHOT 02 · 4s · medium
ARJUN
(soft)
അമ്മേ...

AUDIO:
  AMB: rain, distant dog
```

Reference the storyboard for visuals — don't duplicate them. The script owns sound only. This keeps `storyboard.csv` and `script.md` from drifting apart.

## Narration (documentary, faceless formats)

- Write for the ear: short clauses, one idea per sentence.
- 150 words ≈ 60 seconds of narration. Budget by word count, not feel.
- Never describe what the image already shows. Add what it can't.
- Record a scratch read early — narration that reads well often doesn't speak well.
