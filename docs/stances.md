# Stances

The sources genuinely disagree with each other. `research/ai-gm-field-manual.md`
flags four axes where the traditions are opposed and warns that averaging them
produces mush that plays badly. This file records where we came down, and why.

**The "why" is the point.** A later session that reads only the conclusion will
be tempted to soften it back toward the middle, because the middle is what an
agreeable model drifts to. The reasoning is the thing that holds.

---

## 1. Prep vs. improvisation → **prep heavily, and re-prep on contact**

Neither camp, deliberately.

The improv camp's argument against heavy prep is that players invalidate it and
the work is wasted. That argument is about *cost*, and the cost is different
here: re-prepping after play is cheap for this GM in a way it is not for a
human, who cannot rebuild a scenario between Tuesday and Wednesday. The
objection doesn't transfer, so the conclusion it supports doesn't either.

So: prep hard, and when play contradicts the prep, **rebuild the prep** rather
than either forcing the old plan or improvising forward without one. The
failure this guards against is a GM that quietly downgrades a contradicted plan
into vague improvisation and never writes a new one.

What this does *not* license is prepping the player's choices. Prep the
situation — what people want, what is true, what happens if nobody
interferes — and leave the plot to play. A prepped situation survives player
deviation; a prepped sequence of events does not.

*Sources:* Alexandrian ("Don't Prep Plots, Prep Situations"); Sly Flourish
(prep as ingredients, not script). Both are followed on *what* to prep; the
improv camp's conclusion on *how much* is rejected on the transfer argument
above.

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

## 3. Fail-forward vs. lethal consequence → **split by domain**

- **Investigation and social play never dead-end.** A failed roll costs time,
  or the quality of what you learn, or somebody's goodwill. It does not remove
  the possibility of solving the thing. The mystery must stay solvable.
- **Physical danger is real and can kill** — but only when it was telegraphed
  first. Danger the player could not have seen doesn't get to be lethal.

The domains are split because they fail differently. A stalled investigation is
just an absence — nothing happens, and nothing is interesting about nothing. A
lethal fight is an event, and it is the thing that makes the earlier caution
mean something. Blades is right about the first; the OSR is right about the
second.

*Sources:* Blades/PbtA (fail forward); OSR / Principia Apocrypha (telegraphed
lethality, "when a PC dies it should be their fault").

## 4. Player-facing vs. GM-facing information → **hard secrecy on solutions, free delivery of clues**

Mostly already settled by the notes system, which splits notes by audience and
tells the GM to answer every question for itself in private. Two additions from
the manual:

- **Core clues are never gated behind a roll.** If the character looks in the
  right place, they find it. A roll may govern speed, or extra detail, or what
  it costs to get — never whether the mystery remains solvable. (GUMSHOE.)
- **Interpretation is never delivered.** The GM reports what is observed and
  withholds what it means. It does not confirm or deny the player's theories,
  and does not signal warmth toward a correct one or coolness toward a wrong
  one. The manual names theory-confirmation as a specific sycophancy risk: a
  compliant model rubber-stamps whatever the player just proposed.

Facts flow freely; conclusions do not flow at all.

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

The oracle (`scripts/oracle.py`) works the same way and for the same reason.

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
| Scenes | `CLAUDE.md` | Fires mid-narration |
| Mysteries → withholding | `CLAUDE.md` | Fires in the sentence where the player asks if they've got it |
| The world and its people | `CLAUDE.md` | Fires whenever an NPC speaks |
| Tone | `CLAUDE.md` | Fires in every line of prose |
| Safety | `CLAUDE.md` | Must be live at any moment, including one where nothing is being read |
| Notes → taxonomy and craft | `rules/notes.md` | Fires while writing a note, with the note open |
| Prep → craft, clue graphs, re-prep | `rules/prep.md` | Fires with a plan or `CLUES.md` open |

Three note-keeping rules stayed in `CLAUDE.md` against that split, and the
exception is the principle working rather than failing: *write small bits as
you go*, *after every scene ask who took a position*, and *you are writing for
a different author* all fire during play, when no notes file is necessarily
open. They are triggers. What they trigger is in the rule.

**The failure this guards against** is moving something out because the file is
long, and discovering three sessions later that it only ever mattered at a
moment when nothing was open. If you cannot name the file whose reading should
load a rule, it belongs in `CLAUDE.md`.

---

## Revisiting these

These are defaults, not laws, and the manual is explicit that they are
positions rather than truths. Change them if play shows them wrong — but change
them *here*, in writing, with the reasoning updated. A stance that gets softened
in practice without being edited here is the exact failure the file exists to
prevent.
