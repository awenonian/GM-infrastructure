# Playtesting

`CLAUDE.md` is currently built entirely from research — what other people found,
generalised. Nothing in it comes from watching *this* prompt fail. That is the
highest-value evidence available and every session that goes unrecorded throws
it away.

## Setting up a run

**Branch from `main`**, named `playtest/NN-short-name`. Playtests are disposable
and never merge back; what merges back is the change you make to the prompt
afterwards, on its own branch. Forking instead of branching is also fine, and
has one advantage — it exercises the fork-and-play path a real user takes, which
is part of the product. Branching has the better diff.

**Copy `playtests/TEMPLATE.md` to `playtests/current.md`** before you start, and
fill in the header. The prompt version matters: a log you can't tie to a commit
is an anecdote.

**Run it where you'll actually play.** If the product is something you talk to
from a phone, test on the phone. A local CLI run is cleaner in the sense that
it isolates the prompt, and worse in the sense that it tests a configuration
that will never ship. The hosted environment adds its own framing — instructions
about doing software work, committing, opening pull requests — and that framing
is part of the thing under test, not noise to be filtered out. Some of it is
probably helping: reaching for tools, keeping files as state, writing notes
without being pushed. Some of it works against the game, and those are the parts
worth countering explicitly in `CLAUDE.md`.

**A note on memory.** Auto memory is machine-local and is not shared across
cloud environments, so on hosted sessions it does not carry between runs — the
repository is the only memory that persists. If you playtest locally, it *does*
carry, and run 2 will inherit whatever run 1 taught it. Set
`autoMemoryEnabled: false` for local playtests, or fork so each run gets its own
memory directory.

**Record the context cost.** Run `/context` at the top and put the memory-file
total in the header. That's the number the triage is trying to move; without a
before-figure you can't tell whether a cut helped or just made the file shorter.

## What to play

Short and broad beats long and deep. One run should touch:

- **Character creation**, or enough of it to see whether the rules skill gets
  loaded and used rather than recalled.
- **An investigation beat** — something to work out, with a wrong theory offered
  out loud. This is where the withholding rules either hold or don't, and it's
  the single most informative thing you can test.
- **A moment of real physical danger**, telegraphed. Watch whether stakes get
  named before the dice and whether `roll.py` is actually invoked first.
- **One NPC who wants something** that isn't what the player wants.

A three-hour dungeon crawl exercises one section repeatedly and tells you very
little. Four scenes across four kinds of play tells you a lot.

## Reading a finished run

Three sources, in ascending order of usefulness:

1. **The log.** What the player flagged in the moment.
2. **The notes diff.** `git diff main..playtest/NN -- notes/`. What the GM wrote
   is interesting; what it *didn't* write is more so. An empty `POSITIONS.md`
   after a session full of commitments is a finding about the prompt, not about
   the session.
3. **The transcript.** Where you check whether the dice call preceded the
   narration, every time.

## The honest limit of a single run

**A rule that wasn't violated is not a rule that earned its place.** The model
might have done the right thing anyway. From one clean run you cannot
distinguish a load-bearing instruction from an inert one, and that distinction
is the entire point of the triage.

So the method is to cut and watch:

- Trim the sections you suspect are inert. Commit that as a candidate version.
- Run the same scope again on a fresh branch.
- If the failure the section was guarding against appears, it was load-bearing —
  put it back, and now you know why it's there.
- If it doesn't appear across a couple of runs, it was costing context for
  nothing.

This is affordable precisely because playtests are disposable. It is also the
only way to find out; reasoning about which instructions matter is how the file
got to 460 lines in the first place.

Bias toward cutting. A rule wrongly cut comes back with evidence attached, which
makes it a better rule than it was. A rule wrongly kept is invisible forever and
is paid for by every session in every fork.

## Feeding it back

A run that changes nothing was still worth doing, but say so in the record.
When it does change something:

- Prompt edits go on their own branch off `main`, not on the playtest branch.
- Update the affected rows in `docs/integration.md`.
- If a stance moved, rewrite its reasoning in `docs/stances.md` — not just its
  conclusion.
- Rename `playtests/current.md` to `playtests/NN-short-name.md` and fill in the
  Afterwards section.
