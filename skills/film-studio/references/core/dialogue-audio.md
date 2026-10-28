# Dialogue and audio

Reference for every script file. Read before writing dialogue.

## The constraint

Speech eats runtime. A 60-second piece holds roughly **20–35 seconds of speech** — already a lot. At 3 minutes you get maybe 90 seconds of talk. At 10 minutes, dialogue must earn every line.

Rule of thumb: **for every 10 seconds of runtime, one line of dialogue.** Any more and the piece becomes a phone call with visuals.

## Budget

- **One line per shot** at short lengths. Two lines means the shot is too long.
- **Cut the first and last line of every exchange.** Usually throat-clearing.
- **Under 12 words a line. Under 8 is better.**

## Natural, not written

Film dialogue is not prose read aloud. People interrupt, trail off, answer the wrong question, and repeat themselves.

1. **Answer the question underneath, not the question.** "Where were you?" — "Is the food cold?"
2. **Contractions and fragments.** "I don't know." Not "I do not know." "Later." Not "I will do it later."
3. **Let a line get cut off.** An interruption is the cheapest realism there is.
4. **One thought per line.** A comma splice and a semicolon is a paragraph.
5. **No one states the theme.** If a character explains what the film is about, cut the line.
6. **Nobody explains what both people already know.** That's an audience memo, not a conversation.
7. **Every line wants something** — information, distance, forgiveness, a reaction. A line with no want is filler.
8. **Silence is a line.** A look, a beat, a character deciding not to answer.

## Cinematic shape

- **Enter late, leave early.** Start after the greetings; cut before the goodbye.
- **One power shift per scene.** Someone gains control or loses it. If nobody moves, it isn't a scene.
- **Cut on the last line**, not after it.
- **Four exchanges maximum** at Reel length. Two is often enough.

## Punch lines

A short line at a pressure point that lands harder than everything around it. Not a joke — a reversal, a threat, a confession, a refusal.

**Where they go**

- the last line before a cut
- the line that flips who holds the power
- the final beat before the cliffhanger

**Rules**

1. **One per scene. Two per episode, maximum.** More and none of them land.
2. **Ten words or fewer. Eight is better.**
3. **Pressure first.** A punch line on page one is noise; the scene has to squeeze before it releases.
4. **No tag after it.** Line → reaction → cut. Never a second line explaining the first.
5. **No stage direction announcing it.** Don't write "(meaningfully)". Let it sit.
6. **Earn it with the scene, not with volume.** Shouting is not a punch.

**Six kinds that work**

| Kind | Shape | Example |
|---|---|---|
| Reversal | the safe thing is the threat | "He's not the one following you." |
| Refusal | the answer is no, and it costs | "I'm not going back in that house." |
| Confession | a fact, dropped flat | "I sold it. Last Tuesday." |
| Threat | quiet, specific | "You'll need both hands." |
| Callback | an earlier line, turned | "It's just a phone." → "It was just a phone." |
| Joke with teeth | funny and cruel | "You're the brave one. That's why you're still here." |

**What kills them:** the villain monologue, "we're not so different, you and I", a trailer line dropped into a quiet scene, and any punch a character then explains.

## Read it aloud

The only test that matters:

- If you run out of breath, cut it.
- If any character could say the line, it isn't dialogue — it's text.
- If you'd be embarrassed to say it to a friend, rewrite it.

## Native-language dialogue

- Write the **spoken** register, not the written one. Malayalam: എന്താ, not എന്താണ്; അല്ലേ, not അല്ലയോ.
- Keep the loanwords people actually use — ഫോൺ, ബസ്, ടിക്കറ്റ്.
- Don't give a village character Sanskritised lines, or a professor slang, unless that contrast is the point.
- The **voice descriptor** carries the accent; the **words** carry the register. Never try to spell the accent.

## On the page

Keep the script plain — a shooting document, not literature:

```
EP01 · SC 03 · cut 3s · close-up
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
| **Dialogue** | Generated natively in-prompt | Lock the voice descriptor — see `language.md` |
| **Ambience** | Generated | Room tone. Without it, cuts feel like slideshows. |
| **Effects** | Generated | One per significant action. |
| **Music** | Generated or licensed | **Optional — decided once at setup** |

**Every shot gets an ambience line**, even "silence, wind". Blank audio is what makes AI video feel fake.

**Every visible action that makes noise gets an SFX line** — a door, a car, thunder, footsteps, a phone vibrating, a chair scraping. If you can see it, you should hear it.

## Sound policy — decided once

Ask at setup, right after the cast: **music or no music?** Record it in `project.md` and honour it for the whole film.

**No music**

- Effects and ambience only. This is **not silence**.
- Every prompt ends with `No music.`
- Thunder, rain, doors, cars, footsteps, fans, fluorescent hum, distant traffic — all still written, shot by shot.
- Silence with no effects is what makes AI video feel dead.

**Music**

- **One track per episode**, not per scene.
- Enter after the hook, not under it.
- Drop out completely for the punch line. Silence reads as importance.
- Specify genre, tempo, instrumentation, and "no vocals" unless you want them fighting the dialogue.

Never add music the user didn't ask for. Never leave a no-music project with a score because a prompt felt empty.

## Language

Omni speaks many languages natively, so dialogue goes **into the prompt** rather than into a later dub pass.

- Write the line in the **project language, in native script**. Never translate it into English inside the prompt, and never romanise it — script carries pronunciation.
- Add the **locked voice descriptor** immediately after the line, verbatim from the bible.
- Keep lines to **one sentence per shot**. Long lines rush and drift.

Full rules in `language.md`. Per-language notes (accents, fonts, visual vocabulary) in `languages/<language>.md`.

**Fallback only if native speech fails:** generate with `No dialogue. Only ambience: ...` and dub in the edit. Don't do this by default — it costs you lip sync and the performance.

## Sound-on design

Most platforms autoplay with sound, but many viewers start muted.

- The **visual** must carry the story alone.
- **On-screen text** carries the one line that matters.
- Sound adds. It never explains.

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

## SHOT 01 · cut 2s · extreme close-up
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
