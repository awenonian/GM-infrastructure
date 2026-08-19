# Integrating the field manual

Working tracker for `research/ai-gm-field-manual.md`. Each row is a claim or
technique from that document and what we did with it.

Status vocabulary:

- **encoded** — it's in `CLAUDE.md` or the `notes/` scaffolding; the "where"
  column says where.
- **scaffolded** — it exists as a file, template, or script rather than as a
  prompt clause.
- **pending** — agreed in principle, not yet built.
- **needs decision** — blocked on a stance in `stances.md`.
- **rejected** — deliberately not doing it; the "where" column says why. A
  rejection is a decision and is worth as much as an adoption.

Nothing gets silently dropped. If a row leaves this table it's because it moved
to "encoded" and the text it became is findable.

## The anti-sycophancy spine (manual: Stage 1, §d, §g)

| Claim | Status | Where / why |
|---|---|---|
| Over-compliance is the dominant AI-GM failure mode; weight the prompt toward it | pending | |
| Resolve mechanics before narrating outcome | pending | |
| Fixed machine-readable output block each turn | needs decision | Clashes with the prose register the current prompt is written in |
| Forbid auto-success; failure must be possible and consequential | pending | |
| Adjudicate against game state regardless of how well the player argues (pseudo-logic is the documented attack vector) | pending | |
| Don't confirm player theories or hand over clue interpretations | pending | |
| Redirect in-world (information / consequence / NPC), never bare denial | pending | Best-sourced AI-specific finding in the manual |
| "Yes, but / no, and" over unconditional "yes, and" | pending | |

## Prep and planning (manual: §a, §j, Stage 5)

| Claim | Status | Where / why |
|---|---|---|
| Prep situations, not plots | needs decision | |
| Goal-oriented opponents with a timeline of what they do unopposed | needs decision | |
| Lazy DM eight-step prep checklist | needs decision | |
| ~10 reusable secrets and clues as improvisation fuel | needs decision | |
| Carry unrevealed secrets forward between sessions | pending | |
| Advance offscreen clocks between sessions | pending | |
| Prep is stickier than conversation; the plan bends to play | encoded | `CLAUDE.md` §Planning — predates the manual, agrees with it |

## Mysteries and information (manual: §h, Stage 2)

| Claim | Status | Where / why |
|---|---|---|
| Three Clue Rule — three clues per conclusion | pending | |
| Inverted Three Clue Rule — any three clues yield a conclusion | pending | |
| Node-based scenario design with a revelation list | pending | Manual calls this the most directly implementable piece of the canon |
| GUMSHOE: never gate a *core* clue behind a roll | pending | |
| Track who knows / believes / lies about what | pending | Partly served by `notes/gm/characters/` |
| Facts are not clues; leave inference to the player | pending | |

## Scene craft and pacing (manual: §c, §e)

| Claim | Status | Where / why |
|---|---|---|
| Cut to the interesting part; frame late, leave early | pending | |
| Strong start — open on a problem or choice | pending | |
| Address the character, not the player | pending | |
| Hope/fear beat oscillation (Laws) | pending | |
| Don't resolve stakes too fast | pending | |
| Clocks as a pacing and consequence device | pending | |
| End sessions on a hook or unresolved beat | pending | |
| Infer and adapt to the player's evident preferences (Laws' player types) | pending | |
| Reading the room / body language / physical staging | rejected | Doesn't transfer. The manual flags this itself; substitute is explicit check-ins |

## Adjudication (manual: §d)

| Claim | Status | Where / why |
|---|---|---|
| Roll only when the outcome is uncertain and both branches are interesting | pending | |
| State stakes, position, and effect before the roll | pending | The single most mechanical guard against flattering post-hoc outcomes |
| Rulings, not rules; then apply the ruling consistently | pending | |
| Fail forward — failure changes the situation rather than stalling it | needs decision | |
| Devil's Bargains | pending | |
| Telegraph danger before it can kill | needs decision | |
| Let a clever plan work; don't buff opposition to save a planned fight | pending | |
| Advance a clock rather than forcing a choice under analysis paralysis | pending | |

## NPCs and the world (manual: §f)

| Claim | Status | Where / why |
|---|---|---|
| Name everyone; everyone wants something | pending | Partly served by INTENTION in `notes/gm/characters/TEMPLATE.md` |
| Think offscreen; factions pursue goals unobserved | pending | |
| NPCs are competent but must not solve the player's problems | pending | Named as a recurring AI failure — over-helpful, therapeutic NPCs |
| Distinct, consistent NPC voices | encoded | `CLAUDE.md` §Notes (VOICE) and `notes/gm/characters/TEMPLATE.md` |

## Continuity (manual: §i, Stage 2)

| Claim | Status | Where / why |
|---|---|---|
| External state is the source of truth, not model memory | scaffolded | The whole `notes/` tree is this |
| Re-anchor canon at session open (the AI's reason to recap differs from a human's) | encoded | `CLAUDE.md` §Starting up |
| Just-in-time rule injection rather than parametric recall | scaffolded | Rules skills, per `CLAUDE.md` §Starting up |
| Retconning policy decided in advance | pending | Interacts with the recap-reconciliation rules already in `CLAUDE.md` |

## Solo play and surprise (manual: Stage 4)

| Claim | Status | Where / why |
|---|---|---|
| A single intelligence on both sides collapses into wish-fulfilment (Czege Principle) | pending | |
| An oracle the GM must consult and cannot rationalise away | pending | Wants to be a script, not a prompt clause |
| Chaos factor tuning how often the unexpected intrudes | pending | |
| Scene check: expected scene → altered / interrupted | pending | |

## Safety (manual: §k)

| Claim | Status | Where / why |
|---|---|---|
| Lines and veils, negotiated before play | pending | |
| X-card as an always-available explicit command | pending | Must be a command; the GM can't read discomfort |
| Script change — rewind / pause / fast-forward | pending | Manual notes an AI can literally re-narrate |
| Explicit out-of-character check-in channel | pending | |

## Architecture (manual: Stage 6)

| Claim | Status | Where / why |
|---|---|---|
| Prefer one strong GM prompt with tool-grounded state | pending | |
| LLM committees that critique each other measurably degrade correctness | pending | Argues against a subagent-reviewer design |
| At most one narrow, well-scoped adjudication check | pending | |
