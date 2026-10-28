# Malayalam

Gemini Omni renders Malayalam speech natively, so dialogue goes **into the prompt**, not into a later dub. That removes the recording step — and introduces voice drift as the main failure mode.

## Prompt pattern

```
Arjun, 17, thin, dark brown skin, ... [verbatim bible] ...
sits on the edge of a bed, speaking quietly to the empty room.
Medium close-up, static. Warm lamp from camera left.
He says in Malayalam: "അമ്മേ, എനിക്ക് പേടിയാകുന്നു."
Voice: low, warm, slightly breathy; Malayalam with a Thrissur accent.
No music. Rain on tin roof. No text. Vertical 9:16.
```

Order matters: **action → line → voice → ambience → negatives**.

## The voice line

Locked in `bible/characters.md`, pasted verbatim everywhere the character speaks. Pick from:

| Quality | Options |
|---|---|
| **Register** | low and warm · bright and quick · flat and tired · theatrical |
| **Accent** | Thrissur · Trivandrum · Kannur · Kottayam · Kochi · neutral |
| **Pace** | unhurried · clipped · rushed, breathless |
| **Texture** | breathy · nasal · gravelly · clear |

Example, complete:

```
Voice: low, warm, unhurried; Malayalam with a Thrissur accent; slightly breathy.
```

## Voice drift — the main failure

The voice changes between clips because each generation is independent. Fixes, in order of reliability:

1. **Same descriptor, byte for byte.** The single biggest factor. Any rewording reads as a different person.
2. **Same emotional register.** A whisper is a different voice; keep the register consistent within a scene.
3. **Same sentence length.** Long lines drift more than short ones. Split anything over ~12 words.
4. **Edit around it.** Practically, you'll cut on the line rather than hold it. Write lines short enough that a 3-second cut contains the whole thing.

Symptoms and causes:

| Symptom | Cause | Fix |
|---|---|---|
| Different person each shot | voice line reworded | paste verbatim |
| Accent slides | accent not specified | add the region |
| Wrong gender or age | descriptor vague | "low, warm, woman in her fifties" |
| Line rushed | prompt too long | cut the line, not the description |
| Line missing entirely | audio clause buried | move dialogue earlier in the prompt |

## Lip sync

Unusually for AI video, native dialogue means **speaking close-ups are viable**. But:

- Keep lines to **one sentence per shot**.
- Medium and medium-close hold sync better than extreme close-ups.
- Avoid two characters speaking in one shot — one speaker per generation.
- If sync fails repeatedly, cut to the listener, or to hands, and let the line play over it.

## On-screen text

Malayalam conjuncts break in the wrong font. Use:

- **Noto Sans Malayalam** (safe default, free)
- **Manjari** (lighter, more editorial)
- **Baloo Chettan** (heavier, better for Reels hooks)

Rules:

- Never let the **model** render Malayalam text — it produces convincing gibberish. Generate with `no text, no signage with legible writing`, then add text in the edit.
- Hook cards: max 5 words.
- Line height generous — Malayalam glyphs are tall and stack.

## Visual vocabulary — Kerala, not generic India

Generic "India" in AI video means turmeric-lit temples, turbans, and auto-rickshaws. Kerala reads differently. Useful specifics:

| Element | What to write |
|---|---|
| Walls | laterite stone, red oxide floors, whitewashed plaster with green trim |
| Roofs | terracotta tiles, sloping, deep eaves |
| Water | monsoon rain, wet black tarmac, puddles reflecting tube lights |
| Light | overcast green-grey daylight; warm tungsten at night; tube lights in shops |
| Street | narrow lanes, coconut palms, compound walls, temple walls with lamps |
| Interiors | wooden shutters, ceiling fans, steel almirah, plastic chairs |
| Food/teashop | glass tumblers, steel plates, banana leaf, red plastic chairs |

Put the chosen set in `bible/style.md` so it stays consistent.

## Common failures

1. **Explaining in English inside the prompt.** Write the action in English, the line in Malayalam — never both languages in the dialogue clause.
2. **Romanised dialogue.** `"ammae"` produces a different pronunciation than `"അമ്മേ"`.
3. **Long speeches.** Malayalam lines over ~12 words drift and rush.
4. **Model-rendered Malayalam signs.** Always gibberish. Add text in the edit.
5. **Subtitles added by default.** Don't, unless asked.
6. **Generic-India imagery.** Specify Kerala materials and light, or the model defaults to stereotypes.
