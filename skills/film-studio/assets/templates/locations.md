# Locations and props — <PROJECT>

> Prompts only. Generate each plate once, then reuse the same file forever.
> No people in a location plate — you want the place, not extras.

---

## <LOCATION>

**Locked description — verbatim in every prompt:**

```
<place>, <materials>, <architecture>, <light>, <weather>.
```

**Sound signature:** 
**Reference file:** `refs/<location>-wide.png`

### Establishing — wide

```
<locked description, verbatim>
Wide establishing, eye level.
No people. No text. <aspect>.
```

### Reverse

```
<locked description, verbatim>
Reverse angle from the far wall, eye level.
No people. No text. <aspect>.
```

### Detail

```
<locked description, verbatim>
Detail of <the one object that defines this place>, shallow depth of field.
No people. No text. <aspect>.
```

### Night / rain variant

```
<locked description, verbatim>
Same room at night, <light source>, <weather if any>.
No people. No text. <aspect>.
```

---

## Props

| Prop | Where it appears | First seen | Reference file |
|---|---|---|---|
| | | | |

### <PROP>

```
<object>, <material>, <size>, <condition>, <surface detail>.
Isolated on a plain background, soft even light.
No hands, no text.
```

---

## Rules

- One plate per location, one file name, never regenerated.
- Props that recur get their own prompt; props that appear once do not.
- Where a prop is at the end of an episode is a continuity fact — log it.
