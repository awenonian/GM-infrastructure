# Integrating the field manual

Working tracker for `research/ai-gm-field-manual.md`. Each row is a claim or
technique from that document and what we did with it.

Status vocabulary:

- **encoded** — it's in `CLAUDE.md`; the "where" column says which section.
- **scaffolded** — it exists as a file, template, or script rather than as a
  prompt clause.
- **pending** — agreed in principle, not yet built.
- **rejected** — deliberately not doing it; the "where" column says why. A
  rejection is a decision and is worth as much as an adoption.
- **cut** — was encoded, and was removed after play. The "where" column says
  what the playtests showed. This is not the same as rejected: the idea was
  tried in the prompt and taken out on evidence, and the evidence is named so a
  later session can weigh restoring it.

Sections named below are in `CLAUDE.md` unless the row says `rules/…`, which
means a path-scoped rule that loads when the GM opens a matching file. Stance 6
explains which goes where.

Nothing gets silently dropped. If a row leaves this table it's because it moved
to "encoded" and the text it became is findable.

Where a row says "stance", the reasoning is in `stances.md`, not here.

**The evidence base changed in September 2026.** Until then every row here came
from research. `playtests/` now holds two full ACKS transcripts, and the rows
marked **cut** were decided against them rather than against the literature.
`playtests/02-acks-two-session-review.md` is the review those decisions came out
of.

## The anti-sycophancy spine (manual: Stage 1, §d, §g)

| Claim | Status | Where / why |
|---|---|---|
| Over-compliance is the dominant AI-GM failure mode; weight the prompt toward it | **cut** | The guards stayed; the essay about them went. §Adjudication opened with ~400 words explaining the failure to the model, and two sessions show the model reproducing the prompt's own register in its narration (bold spans per 1,000 words: prompt 13.9, GM prose 23.1). Weighting the prompt toward the failure mode is still the design; describing the failure at length was paying for it twice |
| Resolve mechanics before narrating outcome | encoded | §Roll before you narrate. 100% compliance across two sessions. One clause removed — "that the call is visible in the transcript is the point" — which was producing a GM that narrated its own compliance |
| Fixed machine-readable output block each turn | rejected | Stance 5. Requirement kept, format replaced by the visible `roll.py` call — a block is written by the same pass that chose the outcome and can be back-filled; a tool call can't |
| Forbid auto-success; failure must be possible and consequential | encoded | §Only roll when it matters; §Failure buys something |
| Adjudicate against game state regardless of how well the player argues | **cut** | Was §A good argument is not a success. Nothing in two sessions exercised it — the player never argued for an outcome. Restore if a session shows the attack vector is live |
| Don't confirm player theories or hand over clue interpretations | **revised** | Was §Never confirm a theory, cut and replaced by §A wrong reading held twice is yours to fix. The rule could not distinguish a bid to skip the work from a request to check bookkeeping, and defaulted to withholding on both. It also produced a standing instruction in a campaign's `CLUES.md` to preserve a player's false belief indefinitely. See stance 4 |
| Redirect in-world (information / consequence / NPC), never bare denial | **cut** | Was §Never a bare "no". Untested — nothing was refused in two sessions |
| "Yes, but / no, and" over unconditional "yes, and" | **cut** | Was §And never an unconditional "yes". Untested as a rule; the behaviour showed up anyway (Destrio refusing to be managed in session 2) |

## Prep and planning (manual: §a, §j, Stage 5)

| Claim | Status | Where / why |
|---|---|---|
| Prep situations, not plots | encoded | §Planning, and `rules/prep.md`. Sharpened by stance 1 into prep-the-world / play-the-plot, with a no-placeholders rule. Sharpened again after play: see the deliverability test below |
| A session plan lists what moves, not what gets found | encoded | `rules/prep.md` and `notes/gm/plans/README.md`. From play, not the manual — the extension of "prep situations" to the *plan file's own headings*. See the play-derived table |
| Goal-oriented opponents with a timeline of what they do unopposed | encoded | `rules/prep.md` — what each party wants, does this week unopposed, and would never do. Now the load-bearing half of a session plan rather than one item in it |
| Rebuild prep when play contradicts it, rather than drifting | encoded | `rules/prep.md` and `notes/gm/plans/README.md`. The `CLAUDE.md` trigger was cut; the craft is path-scoped and reloads on read |
| Lazy DM eight-step prep checklist | rejected | As a checklist it's system-specific (steps 7–8 assume D&D-likes). The transferable steps are encoded separately: secrets and clues, NPC goals, locations |
| ~10 reusable secrets and clues as improvisation fuel | encoded | `rules/prep.md`; `notes/gm/CLUES.md` → Loose clues. Exercised in session 2 — a loose clue became the waystation footing block |
| Carry unrevealed secrets forward between sessions | encoded | `rules/prep.md`; CLUES.md status vocabulary distinguishes undelivered from spent |
| Advance offscreen clocks between sessions | encoded | §The world and the people in it, reworded; clocks table in `notes/gm/STATE.md` |
| Prep is stickier than conversation; the plan bends to play | encoded | `notes/gm/plans/README.md`. Cut from `CLAUDE.md`, kept where a plan is open |
| "Play to find out what happens" (PbtA) | encoded | §Planning — adopted for the plot, rejected for the world. Stance 1 |
| Czege Principle — don't author both problem and solution | encoded | §The oracle, and stance 1's split: the world is authored, the plot is not |
| Strong start — open on a problem or a choice | encoded | §Open on something having moved, and §In media res is not in the dark, which is the guard against the strong start eating its own premise. Was pending; play supplied the specific case that mattered. A resumed session otherwise opens where the previous one ran out of energy — session 2 of the ACKS campaign opened at 4am at a hole in the ground with everyone asleep, on an explicit plan instruction to let the player move first |

## Mysteries and information (manual: §h, Stage 2)

| Claim | Status | Where / why |
|---|---|---|
| Three Clue Rule — three clues per conclusion | **cut from `CLAUDE.md`**, scaffolded | Still in `rules/prep.md` and enforced by the revelation table in `notes/gm/CLUES.md`. Removed from the prompt because in play it stopped being insurance against a missed clue and became a checklist to discharge: all three core clues for the moved-stone conclusion were delivered inside session 1's first scene |
| GUMSHOE: never gate a *core* clue behind a roll | encoded | §Mysteries; CLUES.md marks each clue core or not. Honoured explicitly in play — the stone's three clues were free, the Knowledge throw governed only dating |
| Node-based scenario design with a revelation list | scaffolded | `notes/gm/CLUES.md` |
| Track who knows / believes / lies about what | scaffolded | CLUES.md table, a per-person block in `notes/gm/characters/TEMPLATE.md`, and `rules/prep.md` |
| Facts are not clues; leave inference to the player | encoded | §Mysteries. The most-violated rule in the transcripts and kept for that reason — the violation is the complaint, not evidence against the rule |
| Move information toward those who can act on it | **cut** | Was §Getting information to them — "when you're unsure how much to give, give more." Quoted by name in session 2's own notes immediately before an over-delivery, and the licence behind the pattern where every player question produces a rich, exactly-relevant, newly-invented answer |
| Inverted Three Clue Rule — any three clues yield a conclusion | pending | Currently implicit in the graph structure; not stated as a design instruction |
| A clue's most natural reading has to be the true one | **rejected** | Considered after the chisel-marks failure, where a clue meaning "this was protected" read naturally as "this was recently carved." Rejected as unactionable: the model that wrote the clue believed it pointed correctly, so a prospective check self-confirms. Replaced by the reactive rule below |

## Scene craft and pacing (manual: §c, §e)

| Claim | Status | Where / why |
|---|---|---|
| Cut to the interesting part; frame late, leave early | **cut** | Untested — no evidence either way in two sessions |
| Frame the expected scene, then check whether it holds | encoded | §The oracle; `oracle.py scene`. Used twice, and the one interruption produced the campaign's live thread |
| Address the character, not the player | **cut** | Contributed to a specific failure: the GM narrating the player character's decisions and investigative choices ("you leave the Zaharan off it", "so you stop looking for the forgery"). Nothing bounded second-person narration to actions the player declared |
| Describe to the senses | **cut** | The prose was good throughout; unclear whether the rule or the model produced it. Cut to find out |
| Don't resolve stakes too fast | **cut** | Lost anyway when it was in the file: a four-segment clock went from 2 to complete inside one session-2 conversation. A rule that doesn't hold when present isn't earning its lines; the pacing problem wants a mechanism, not a reminder |
| Clocks as a pacing and consequence device | scaffolded | `notes/gm/STATE.md` clocks table |
| End sessions on a hook or unresolved beat | **cut** | Untested. Both sessions ended by player request, not by GM framing |
| Hope/fear beat oscillation (Laws) | pending | Wants a tracking mechanism to be more than a slogan |
| Infer and adapt to the player's evident preferences (Laws' player types) | pending | Likely superseded by the planned session zero, which asks the player to state goals and motivations directly rather than having the GM infer them |
| Reading the room / body language / physical staging | rejected | Doesn't transfer; the manual flags this itself |

## Adjudication (manual: §d)

| Claim | Status | Where / why |
|---|---|---|
| Roll only when the outcome is uncertain and both branches are interesting | encoded | §Only roll when it matters. Working, possibly too well — two sessions produced **one** die roll. Its third bullet was sharpened: a failure that would stall the scene is the wrong stakes, not a reason to skip the roll |
| State stakes and consequences before the roll | **cut** | Was §Say what's at stake first. A pre-roll rule that generalised into pricing every decision, and the direct parent of the bulleted option-menu that ended most session-1 turns — the `[SUGGESTIONS]` block stance 5 had explicitly rejected, reimplemented in prose. Wants restoring in a form bound to actual rolls |
| Rulings, not rules; then apply the ruling consistently | encoded | §Rulings, not rules; rulings table in `notes/gm/STATE.md`. Three rulings made in session 1 and held across the session boundary |
| Fail forward — failure changes the situation rather than stalling it | **revised** | Was §Failure, by domain (investigation never dead-ends / physical danger is real). Now §Failure buys something, with no domain split: a failure moves the situation and hands over something, and a chain of failures can compound into an outcome that is neither success nor nothing. From the player's account of the session they liked most. Stance 3 rewritten |
| Telegraph danger before it can kill | **cut — open risk** | Untested; nothing threatened the character in two sessions. Flagged rather than settled: the campaign's PC has 4 hit points, and unforeshadowed lethality is the least recoverable failure available |
| Let a clever plan work; don't buff opposition to save a planned fight | **cut** | Untested |
| Advance a clock rather than forcing a choice under analysis paralysis | **revised** | Was §When the player stalls, whose framing was that the situation "gets one step worse." Now §The world moves on its own schedule, and moving is not punishment — what happens when the player hesitates is allowed to help them, and other people acting on their own wants is what makes them people rather than set dressing |
| Devil's Bargains | pending | Needs a system-agnostic form |
| Position and effect stated before the roll (BitD) | pending | Now fully unencoded, since stakes-before-the-roll was cut |
| A character choice is priced, not punished | encoded | §A character choice is priced, not punished. From play, not the manual — see the play-derived table |

## NPCs and the world (manual: §f)

| Claim | Status | Where / why |
|---|---|---|
| Name everyone; everyone wants something | encoded | §The world and the people in it; INTENTION in `notes/gm/characters/TEMPLATE.md`. Working — session 2's gate-keeper got a name and a want in one clause |
| Think offscreen; factions pursue goals unobserved | encoded | §The world and the people in it, reworded around wants rather than threat |
| NPCs are competent but must not solve the player's problems | **cut** | Produced NPCs with a *policy* of unhelpfulness rather than NPCs who don't drive. The player asked his one ally to help read a situation three times in session 2 and was refused three times — and the rule had written itself into that NPC's character file as a personality trait ("I don't guess at people"), so it persists as canon. The player's counter-case is the rule's own best refutation: a crew competently fighting boarders is what made an in-character choice playable |
| Nobody explains the whole situation as they see it | **cut** | Violated freely in play and the violations were good (Quellus's explanations are the best NPC writing in either transcript) |
| Distinct, consistent NPC voices | scaffolded | `rules/notes.md` (VOICE); `notes/gm/characters/TEMPLATE.md`. Working — VOICE files were written and honoured |

## Continuity (manual: §i, Stage 2)

| Claim | Status | Where / why |
|---|---|---|
| External state is the source of truth, not model memory | scaffolded | The whole `notes/` tree is this. Working, and see stance 1's new caveat: the same apparatus is what turns a second session into a queue |
| Re-anchor canon at session open (the AI's reason to recap differs from a human's) | encoded | §Starting up. Fired correctly in session 2 |
| Just-in-time rule injection rather than parametric recall | scaffolded | Rules skills, per §Starting up. No hallucinated system rules in two sessions |
| Retconning policy decided in advance | pending | Partly served by the recap-reconciliation rules in §Starting up, which resolve player-vs-notes but not notes-vs-notes. Session 2 needed exactly this and had nothing: the GM twice rewrote established world-facts mid-session to keep the player's investigation viable |

## Solo play and surprise (manual: Stage 4)

| Claim | Status | Where / why |
|---|---|---|
| A single intelligence on both sides collapses into wish-fulfilment (Czege) | encoded | §The oracle |
| An oracle the GM must consult and cannot rationalise away | scaffolded | `scripts/oracle.py`; §The oracle forbids re-rolling and reinterpreting |
| Chaos factor tuning how often the unexpected intrudes | scaffolded | `oracle.py --chaos`; stored in `notes/gm/STATE.md`. Maintained correctly across both sessions |
| Scene check: expected scene → altered / interrupted | scaffolded | `oracle.py scene`. **The only mode the prompt now directs.** Across two sessions, one of five oracle consultations changed the game and it was a scene check |
| Oracle `ask` with player-chosen odds | **cut from `CLAUDE.md`**, scaffolded | `oracle.py ask` still exists. Both uses in play were near-neutral — one ratified the agreeable default on a coin flip, the other was pre-tilted with `--odds unlikely`. The GM writes the question and picks the odds, which is the hole in the Czege argument; the scene check is the mode where the question is structurally fixed |
| Random events with a focus and a word pair to read | scaffolded | `oracle.py event`, now reached through a scene interruption rather than directed on its own. The one interruption in play produced the campaign's most durable thread |

## Safety (manual: §k)

| Claim | Status | Where / why |
|---|---|---|
| Lines and veils, negotiated before play | encoded | Set in `notes/gm/plans/CAMPAIGN.md`, not negotiated in session — playtest 01 showed the negotiation eating the opening. §Safety says read, don't ask |
| X-card as an always-available explicit command | partly rejected | §Safety keeps "obey an out-of-character stop without negotiating". The rewind half is dropped: the client's rollback removes turns outright (playtest 01) |
| Script change — rewind / pause / fast-forward | rejected | Provided by the client's rollback control, better than the prompt can (playtest 01) |
| Explicit out-of-character check-in channel | **cut** | "Check in when you're pushing" is gone; never fired in two sessions, and both had a session-opening safety preamble that playtest 01 already identified as costing the opening. `log:` remains as the out-of-character channel |

## Architecture (manual: Stage 6)

| Claim | Status | Where / why |
|---|---|---|
| Prefer one strong GM prompt with tool-grounded state | encoded | The design: one `CLAUDE.md`, state in `notes/`, mechanics in scripts |
| LLM committees that critique each other measurably degrade correctness | rejected as a design | No reviewer subagents. The manual's own evidence argues against them |
| At most one narrow, well-scoped adjudication check | encoded | `roll.py` and `oracle.py` are that check, and they aren't LLMs |
| Front-load the most-violated rules; buried rules are lost to recency | encoded | §Adjudication still sits immediately after startup. The rationale essay that used to open it is gone; the position is the encoding |
| A versioned system-prompt "contract" | pending | Nothing versions `CLAUDE.md` beyond git history |
| Treat every observed rule-break as a new prompt clause | encoded | `playtests/` and the `log:` command; protocol in `docs/playtesting.md`. Now actually exercised: this revision is the first built from transcripts rather than from research |

## From play, not from the manual

Rules with no source in `research/`. They came from two ACKS transcripts and
from the player's account of earlier campaigns, and they are the highest-value
rows in this file because they are the only ones tested against this prompt.

| Rule | Where | What produced it |
|---|---|---|
| Failure buys something | §Failure buys something | A Starfinder session in an earlier campaign: the player failed nearly every throw in a race, finished second in a wrecked ship, and rated it their best session. Extends the manual's fail-forward past "don't dead-end" to "a failure hands something over," and drops the domain split |
| A character choice is priced, not punished | §A character choice is priced, not punished | The same session. A pilot refused to leave the controls while being boarded — tactically wrong, and it both cost him and meant the boarders never got a grip. The manual has nothing on this |
| A wrong reading held twice is yours to fix | §Mysteries | The chisel-marks failure. A clue read the wrong way, a theory the player then spent most of a session on, and a withholding rule that forbade the one correction that would have helped. Trigger is stated twice *or* acted on at cost; escalates clue → NPC → flat out-of-character correction |
| Character competence is never withheld | §Mysteries, same block | The same failure. The player had to reconstruct by argument what a professional antiquary would have known in seconds. The GM invented this exception itself in session 2 and applied it well — three times, inconsistently, and never where it was most needed |
| A session plan lists what moves, not what gets found | `rules/prep.md`, `notes/gm/plans/README.md` | Session 2 was made almost entirely of prepped content delivered in file order, and the one beat that wasn't is where the GM invented badly. The plan file's own headings were four-fifths deliverables. The player's pattern across campaigns is good first sessions souring into slow second ones |
| Open on something having moved | §Starting up | The same finding, at the session boundary |
| In media res is not in the dark | §Starting up | Playtest 03. A first session opened on the atmosphere around a job — the fee, the apology, how she said "supplier" — without ever saying what the job was. The player's and the character's knowledge diverge at exactly one moment, the opening of a first session, and *report observation, withhold interpretation* pushes the wrong way there. Carries a pre-send check: could the player state what their character is trying to do, in one sentence, from words on the page |
| The world moves, and moving is not punishment | §The world and the people in it | The plan template filed the world acting under "Pressure, if he stalls." The player's correction: something happening when you hesitate is fine and may help — the failure is a cast that only ever moves to threaten, which is a cast of set dressing |
