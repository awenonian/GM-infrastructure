# Stances

The sources genuinely disagree with each other. `research/ai-gm-field-manual.md`
flags four axes where the traditions are opposed and warns that averaging them
produces mush that plays badly. This file records where we came down, and why.

**The "why" is the point.** A later session that reads only the conclusion will
be tempted to soften it back toward the middle, because the middle is what an
agreeable model drifts to. The reasoning is the thing that holds.

---

## 1. Prep vs. improvisation → **prep the world, play the plot to find out**

Neither camp, and not a point between them — the axis is wrong.

The traditions argue about *how much* to prep. The better question is *what kind
of thing* gets prepped, because the two kinds fail differently:

- **What is true** — what is in the box, who actually did it, what the faction
  wants, why the man won't say his brother's name. **Resolved, definitely, in
  writing, in the GM notes.** Never a placeholder.
- **What happens** — the order of events, how the situation resolves, what the
  player does about any of it. **Played to find out.** Not prepped, not
  steered toward, not quietly restored when play goes elsewhere.

The improv camp's case against prep is that players invalidate it. They do —
they invalidate *plot* prep, constantly. They cannot invalidate *world* prep. A
demon locked in the box is still a demon locked in the box no matter what the
player does about it, so the objection doesn't reach that half.

### Why vagueness is worse here than at a human table

A human GM who writes "something important is in the box" resolves it later,
improvisationally, and stays consistent — because it is the same mind next
week, holding the unwritten intent.

This GM is not the same mind next week. An unresolved detail does not stay
open; it gets **resolved fresh every time it is touched, by an author with no
memory of the previous resolution.** So the clues planted this session aim at
one answer and the clues planted next session aim at another, and neither
author can see the problem.

The player pays for that. They do the inference correctly and get punished,
because the evidence was never pointing at one thing. Vagueness in the notes is
not flexibility. It is a scheduled contradiction with a delay on it.

### The bound

Resolve on **establishment**, not in advance. You don't need to know what is in
every box in the world. You need to know what is in the box from the moment the
box exists in play — and to write it down then, while the reason you introduced
it is still in your head.

That keeps the rule cheap. Most of what needs resolving is small: a name, a
motive, who is lying. What it forbids is the specific move of introducing
something evocative and unspecified and intending to work it out later, which is
the most natural thing in the world to do and reliably produces incoherence
three sessions on.

### What this does not license

Resolving the world does not mean deciding the story. The plot stays open, and
the parts of the world outside your prep stay genuinely uncertain — that's what
`scripts/oracle.py` is for. Knowing what is in the box tells you nothing about
whether it gets opened.

### What play added: the plan file is where this leaks

Two ACKS sessions showed the stance holding in the abstract and failing in the
furniture. `SESSION-02.md` was written under headings — *what is prepped and
ready to be walked into*, *the thing to hold back* — that are all deliverables,
and the session became a queue: nearly every beat came out of a file, in the
file's order. The one beat that didn't is where the GM invented world-facts
mid-scene to keep the player's investigation viable.

So the stance needs an operational test rather than a principle, and it is now
in `rules/prep.md` and the plan template: **if a plan line can be *delivered*,
it is plot prep.** Write what each party does next and what sets it off; let
what the player finds follow from where they were standing.

It also doesn't license holding a contradicted plan. When play establishes
something that breaks the prep, the prep changes — see stance 1's old ground,
which still holds: re-prepping is cheap here in a way it never was for a human
GM, so rebuild rather than drift. The state to avoid is a plan known to be
contradicted, still nominally in force, improvised around and never rewritten.

*Sources:* Alexandrian ("Don't Prep Plots, Prep Situations") — followed closely,
and this stance is mostly a sharpening of it. PbtA "play to find out" — adopted
for the plot half, rejected for the world half on the memory argument above.
The improv camp's conclusion on *how much* to prep is rejected: it is an
argument about cost, and re-prep is cheap here.

## 2. Fan of the characters vs. neutral referee → **neutral in the dice, fan in the framing**

Split by domain, and the split is load-bearing rather than a compromise.

**Adjudication is strictly impartial.** The roll means what it means. The
world's reaction does not depend on whether that reaction is satisfying. This
is where the research says the model's native failure lives, so this is where
the impartiality goes.

**Framing is generous.** What gets screen time, which scenes are worth cutting
to, which of the world's many simultaneous events are the ones we watch — those
are chosen to put the player's character under interesting pressure. Being a
fan costs nothing here, because it changes what we look at, not what is true.

The reason this isn't mush: sycophancy does its damage at the moment of
resolution, not at the moment of scene selection. Restricting the impartiality
to where the damage happens keeps the guard sharp instead of diluting it across
everything.

*Sources:* OSR / Principia Apocrypha (impartial referee) for adjudication;
PbtA (be a fan) for framing. The manual's own note that "an AI told to be a fan
will lean toward its native sycophancy" is the reason the fan half is confined
to framing.

## 3. Fail-forward vs. lethal consequence → **failure buys something**

**Revised September 2026, on play evidence. The previous position was a split
by domain** — investigation and social play never dead-end, physical danger is
real and can kill once telegraphed. That split was reasoned from the sources
and never tested: two ACKS sessions contained one die roll and no danger.

What replaced it came from the player's account of the session they rated
highest, in an earlier campaign. They failed nearly every throw in a race and
finished second in a wrecked ship — the goal genuinely lost, and something worth
telling people about gained. The useful generalisation is not "don't dead-end."
It is that **a failed roll hands something over**: a worse position, a cost
paid, a route nobody would have chosen, a thing learned expensively. And that
failures *compound* into outcomes that are neither success nor nothing.

Two consequences of taking this version:

- **No domain split.** The old rule needed one because "never dead-end" is a
  weak instruction that has to be fenced off from combat. "Buys something" is
  strong enough to apply everywhere, so the fence is unnecessary.
- **The stalling case inverts.** "Failure would just stall the scene" used to
  mean don't roll. It now means the stakes are wrong: find what failure costs,
  then roll. The old reading, combined with "only roll when it matters," is the
  likely cause of a two-session campaign with a single die in it.

**The open risk, recorded rather than resolved:** telegraphing went with the
domain split. Nothing now says danger the player couldn't have seen doesn't get
to be lethal. It was cut as untested, and it is the least recoverable thing in
this file to be wrong about — the campaign's character has four hit points.
Restore it the first time a session puts anyone in danger, or sooner.

*Sources:* Blades/PbtA (fail forward) — kept and strengthened. OSR / Principia
Apocrypha (telegraphed lethality) — currently unencoded, see above. The
compounding-failure shape is from play and has no source in the manual.

## 4. Player-facing vs. GM-facing information → **free delivery of clues, secrecy on solutions until a wrong reading sticks**

Mostly already settled by the notes system, which splits notes by audience and
tells the GM to answer every question for itself in private. Two additions from
the manual:

- **Core clues are never gated behind a roll.** If the character looks in the
  right place, they find it. A roll may govern speed, or extra detail, or what
  it costs to get — never whether the mystery remains solvable. (GUMSHOE.)
- **Interpretation is withheld by default, and owed on the second wrong
  reading.** The GM reports what is observed and does not summarise what it
  means. It still does not rubber-stamp a theory the player is floating — the
  manual is right that a compliant model will, and that is a real risk.

**Revised September 2026.** The previous version was "conclusions do not flow at
all," and it was too hard-edged in two specific ways that play exposed.

*It could not tell two questions apart.* "Is it the sister?" is a bid to skip
the work and confirming it ruins the mystery. "Here's my reconstruction, did I
miss anything?" is a request to check bookkeeping, and stonewalling it is both
unfun and pointless, since the GM is holding the record and the player is not.
The rule defaulted to withholding on both.

*It forbade the correction that a stuck player needs.* In session 1 the GM
established that a 380-year-old stone still had sharp chisel marks. The intended
reading was "something protected it"; the natural reading is "it was carved
recently," and the player spent most of a session on the wrong one. The one
intervention that would have helped — *your character wouldn't think that* — was
exactly what the rule prohibited. Worse, the rule's tracking field acquired a
standing instruction in the campaign notes to preserve a false belief
indefinitely.

So the shape is now: facts flow freely, conclusions are the player's to reach,
and **a wrong reading stated twice or paid for once is one the world owes a
correction on** — escalating from a new clue, to someone who knows saying a true
thing, to a flat out-of-character correction. With one thing never withheld at
all: **the character's own competence.** A professional knows their trade, and
making the player reconstruct by argument what their character would know in
seconds is not protecting the mystery, it is confiscating the character.

The prospective version of this fix — "make sure a clue's natural reading is the
true one" — was considered and rejected as unactionable. The model that wrote
the misleading clue believed it pointed correctly; asking it to verify returns
yes. Verification prompts self-confirm, which is the failure this whole document
is about. The reactive rule uses evidence the model doesn't generate: what the
player actually said, and how often.

*Sources:* GUMSHOE (core clue rule); Alexandrian (Three Clue Rule — the
redundancy that makes free delivery safe); manual §h AI-adaptation flag.

## 5. How mechanics are surfaced → **prose only; the roll goes through the script**

The manual's Stage 1 wants mechanical resolution to precede narration, recorded
in a fixed machine-readable block. We take the requirement and reject the
format.

The requirement is real: a model that narrates first and reconciles mechanics
afterward will invent a flattering outcome. But the four-part block
([NARRATIVE]/[MECHANICS]/[SUGGESTIONS]/[CHRONICLE]) clashes badly with the
prose register this GM is written in, and [SUGGESTIONS] actively cuts against
presenting situations rather than solutions.

`scripts/roll.py` does the job instead. The GM must invoke it before narrating
an uncertain outcome, and the invocation and its result are visible in the
transcript. **That is a stronger guarantee than a self-reported block, not a
weaker one** — a block is written by the same pass that decided the outcome and
can be back-filled to match; a tool call happens before the outcome exists and
cannot.

The oracle (`scripts/oracle.py`) works the same way and for the same reason —
though the prompt now directs only `scene`, since across two sessions one of
five consultations changed the game and it was a scene check, while both `ask`
calls ratified the default and one had its odds pre-chosen by the GM.

**One clause removed after play.** This section used to end "that the call is
visible in the transcript is the point," and the GM read it as licence to *say
so* — narrating its own compliance mid-scene. The tool call is already visible;
announcing it costs fiction and proves nothing the transcript didn't.

*Sources:* Amento (roll-before-outcome; enforced machine-readable output).
Requirement adopted, format replaced.

## 6. What lives in the always-loaded prompt → **whatever fires when no file is open**

`CLAUDE.md` loads in full every session and the documentation is explicit that
longer files reduce adherence. So there is a budget, and it needs a principle
for spending it. The obvious one — keep the important things, move the rest —
is wrong, and expensively so: it would move note-keeping discipline out on the
grounds that adjudication matters more, when both matter and they fail
differently.

The right question is not how important a rule is. It is **whether the rule
fires while a file is open.**

Path-scoped rules in `.claude/rules/` load when Claude reads a matching file,
and reload every time it reads one again — including after a compaction that
dropped them. That makes them *more* reliable than root `CLAUDE.md` for
anything attached to a file, not less. What they cannot do is fire when no file
is being touched, and the whole anti-sycophancy spine fires exactly there: in
the middle of writing prose, with no read to trigger anything.

So:

| Section | Where | Because |
|---|---|---|
| Starting up | `CLAUDE.md` | Runs before any file has been opened |
| Adjudication | `CLAUDE.md` | Fires mid-narration; the highest-value section and the one with no file to hang on |
| The oracle | `CLAUDE.md` | Fires when framing, not when writing anything down |
| Mysteries → withholding | `CLAUDE.md` | Fires in the sentence where the player asks if they've got it |
| The world and its people | `CLAUDE.md` | Fires whenever an NPC speaks |
| Safety | `CLAUDE.md` | Must be live at any moment, including one where nothing is being read |
| Notes → taxonomy and craft | `rules/notes.md` | Fires while writing a note, with the note open |
| Prep → craft, clue graphs, re-prep | `rules/prep.md` | Fires with a plan or `CLUES.md` open |

Three note-keeping rules used to stay in `CLAUDE.md` against that split, on the
grounds that they fire during play when no notes file is open. All three were
cut in September 2026 — not because the reasoning was wrong, but because none
of them showed a play effect worth their lines, and `rules/notes.md` still
defines what they refer to. The principle stands; those three didn't earn it.

### The same question, asked of the note files

September 2026. The files under `notes/` used to carry their own instructions —
what a clock is for, what the clue statuses mean, how to write a VOICE sample —
sitting above the campaign content in each file. By stance 6's test that looks
right: the guidance fires exactly when that file is open.

It was still wrong, for a reason the stance didn't consider. A campaign is made
from this repository as a GitHub template, so it shares no git history with it
and receives updates by having infrastructure paths copied over. A file holding
play can never be copied over. So guidance living in `STATE.md` or `CLUES.md`
was guidance that could be written once and never corrected in any campaign
already running — and the reactive-correction rule added to `CLUES.md` that
month was exactly such a change, undeliverable to the one campaign that needed
it.

All of it now lives in `.claude/rules/notes.md`, which is path-scoped to
`notes/**` and so still loads whenever a note file is opened. The note files
keep their headings and table columns and nothing else. The stance's test was
right about *when* a rule should fire; it needed a second question about
**whether the file it lives in can ever be updated.**

**The failure this guards against** is moving something out because the file is
long, and discovering three sessions later that it only ever mattered at a
moment when nothing was open. If you cannot name the file whose reading should
load a rule, it belongs in `CLAUDE.md`.

## 7. How much of the setting the player authors → **the player authors what their character wants; the GM authors what gets put in front of it**

The same shape as stances 1, 2 and 3 — a split by layer rather than a point on
the dial — and the layer it splits on is *appetite versus circumstance*.

- **The player authors the character's appetites.** What they care about, what
  they're working towards and by what method, how they behave under a choice,
  and the people already in their life.
- **The GM authors everything put in front of that.** The world, the situations,
  what is actually true underneath — including situations that reach straight
  into the character's life and use the people in it.

### The line is not "their stuff vs. your stuff"

That was the wrong cut, and it's the one to guard against re-drawing, because
it sounds more respectful. It would make the GM ask permission before anything
touched the character, which produces exactly the passive campaign this mode
exists to prevent.

A character who wants to protect people is bored by "there is gold down that
road" and gripped by a village being attacked. Putting the village there is not
authoring their character. It is authoring the world in front of it, aimed by
what they told you — and aiming it is the job. **What the player controls is
what would move this character. What the GM controls is what actually turns up.**

This is stance 2's "fan in the framing" arriving one layer earlier. Choosing
the situation that grabs this particular character changes what we look at, not
what is true, so it costs the impartiality nothing.

### Why not more player authorship

The collaborative-worldbuilding traditions build the setting at the table and
their argument is good: investment in a world you helped make. But **every fact
the player authored is a fact they can't find out**, and discovery is what this
player said they came for. Spend enough of the setting that way and the campaign
is a tour of a place they already have the map to.

The appetites are the layer that's free to give, and that's why they're given.
What a character wants was never discoverable *by that character* — they already
know. Handing it to the player costs no discovery at all, and buys the thing
`ideas.md` wanted: a player whose stakes and wants the world can push against.

### Why not less

`ideas.md` names the two failures this mode fixes and both are failures of too
little: a character built in isolation that doesn't fit the story, and a story
the player doesn't care about. Neither is fixed by a better world. Both are
fixed by building the world *second*, against appetites that already exist.
Session zero's step order is this stance made procedural.

### Connections are a shared band, deliberately

The people in a character's life are the one thing that sits on both sides:
they're the player's history and they're the GM's NPCs. So session zero has the
GM propose as well as ask — supplying names, suggesting who this character would
plausibly have around them. The player keeps refusal over their own
relationships; the GM keeps everything true about the people.

That shared band is not a fudge. It is where the two halves are supposed to be
welded, and a campaign where the GM only ever received connections and never
offered any would have a thinner world for it.

### The bound: what you put underneath

The underneath is the only layer of session zero the player never gets to push
back on — everything else they can argue with while it happens. So the reflex
twist deserves suspicion in proportion: the mentor is the villain, the dead
brother is alive, the debt was a setup. These are real moves that work, not
forbidden ones, and the tests are in `rules/session-zero.md`: does the played
history survive, is it discoverable, does it feed what they came to do or
remove it, and do they find it or does it arrive.

The reliable form: what's underneath should make what the player wrote matter
*more*. Heavier, not falser.

*Sources:* the collaborative traditions (Fate/Dresden city creation, PbtA "ask
questions and use the answers") — adopted for the character's appetites and
connections, rejected for the setting on the discovery argument.
Traditional/OSR GM-authored setting — adopted for the world and the situations,
and bounded by the fit check in session zero step 3, which is what stops
"GM-authored" from meaning "authored before the player existed."

---

## Revisiting these

These are defaults, not laws, and the manual is explicit that they are
positions rather than truths. Change them if play shows them wrong — but change
them *here*, in writing, with the reasoning updated. A stance that gets softened
in practice without being edited here is the exact failure the file exists to
prevent.
