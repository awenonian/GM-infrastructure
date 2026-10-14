---
paths:
  - "notes/**"
---

# Keeping the notes

This file is the guidance for every file under `notes/`. The note files
themselves hold only campaign content and the headings that give it shape —
nothing explaining how to use them, because a campaign in progress can receive
an updated copy of *this* file and can never receive an updated copy of a file
that holds its own play. Guidance here; state there.

**A campaign started before this split may still have instructions written
inside its note files.** Those are a stale copy and this file supersedes them.
Where they disagree, follow this file, and delete the stranded text from the
note when you next touch it.

## Two axes

### Who they're for

- **`player-owned/`** — the character sheet. Don't change anything on it
  without the player's permission, except in specific rules-prescribed ways,
  like lowering hit points when taking damage. Build choices, equipment, names,
  backstory and the player's own notes are theirs.
- **`player-facing/`** — things the player knows, or that people in the world
  know. Uncertainty is fine here.
- **`gm/`** — your journal. The player is not going to read these, so don't
  hide anything from yourself. Mysteries get answered here. The world should
  have an answer to every question — uncertainty is a fact about people, not
  about the world.

That last rule is about **inventing**. It does not apply to the **record** of
what happened. There the opposite rule holds: only write down answers that came
from play. If you find yourself filling a gap in the record with something
plausible, you have stopped recording and started inventing, and you are doing
it in a file that says it is authoritative.

### What kind of thing they are

- **STATE** — numbers, holdings, who has what, where it is. A ledger. Terse,
  ugly, revised freely.
- **RECORD** — what happened, in play order, appended as you go, never tidied.
- **POSITIONS** — something a character committed to, out loud or by acting.
- **VOICE** — verbatim lines, per recurring character.
- **INTENTION** — what a character is for, what they want, what they'd never do.

## Writing for a different author

The next session will contain none of your memories, so notes are not to
remind, they are to teach. The goal is:

> Could a different author, given only these files, write the next scene so it
> reads as the same work?

Facts stop them contradicting you. Samples and intentions are what stop them
replacing your characters with better-written strangers. Positions taken that
you remember don't survive unless they're in the notes.

**Write small bits as you go, not a write-up at milestones.** The
end-of-session summary is where things get lost — not because you forget, but
because you compress, and you cannot feel what you are compressing out while
the whole session is still in your head.

---

# The files

## `gm/plans/CAMPAIGN.md`

Filled in at the close of session zero, so that no later session has to ask
again: system, where the campaign started, which rules skill is in use, and any
house rules or table conventions. If session zero was skipped, fill it in from
the player's first message.

Lines and veils are **not** here — they're in `player-owned/LINES-AND-VEILS.md`,
below.

**The long shape** is what the campaign is about and where it is pointed.
Revise it when play demands; keep it consistent with everything already
revealed.

## `gm/STATE.md`

The truth behind the ledger. Secrets, who is actually where, what is moving
offscreen, clocks and how far along they are, what a thing really is. Terse and
revised freely, like the player-facing ledger — but this one is allowed to know
things.

**Mark anything that hasn't reached play yet**, so a later session doesn't
mistake your decision for something the table established.

- **Chaos factor** — how much the world intrudes, 1 to 9. Feeds
  `scripts/oracle.py`. Move it one step after a scene: up if the player ended
  less in control than they started, down if more. Not further, and not because
  a scene felt slow.
- **Clocks** — what is advancing offscreen, and how far along. A clock is the
  honest way to hold tension across scenes without resolving it, and the thing
  to tick when the player stalls rather than forcing them to choose. Columns:
  clock, segments, filled, what happens when it completes.
- **Rulings** — rules calls made where the system was silent or unclear. Once
  made, they hold; a ruling that drifts between sessions is worse than either
  version applied consistently. Columns: situation, ruling, when.

## `gm/THREADS.md`

Every loop the campaign has open, and its status. Columns: thread, status,
where it stands.

Not everything needs to be resolved. But nothing should be left in an ambiguous
state — either close the loop or write down that it's open. **A thing with no
recorded status is worse than either, because next session has to guess.**

Status is one of **open** (live, the player can pull on it), **cold** (real, but
nothing is pushing it), **closed** (resolved — say how), or **dropped**
(deliberately abandoned — say why, so a later session doesn't revive it by
accident).

## `gm/CLUES.md`

The mystery as a graph, not a trail. Nodes are places, people and events; the
edges are what one points at another with.

**Revelations** — one block per conclusion the player needs to be able to
reach, with a table of clues: clue, where it lives, core?, status.

- **At least three independent clues each.** Not because the player is
  inattentive — because clues get missed and misread as a matter of course, and
  two clues is a chokepoint. Three routes being *available* is the point;
  delivering all three in one scene empties the revelation in a single sitting.
- **Mark each clue core** if the mystery cannot be solved without it. Core clues
  are never gated behind a roll: if the character looks in the right place, they
  find it. A roll may govern speed, extra detail, or cost — never availability.
- **Status** is **undelivered** / **delivered** (say when) / **spent**
  (delivered and acted on) / **burned** (its node is gone, or it's no longer
  reachable — if this leaves fewer than three, add one somewhere else now).

**Who knows what** — person, knows, believes (may be false), will lie about.
Keep it honest with yourself. A red herring is only fun when the truth is
over-supported; if the false trail is better evidenced than the real one, you
haven't built a red herring, you've built a wrong answer.

**Loose clues** — facts that are true, unrevealed, and not yet attached to any
scene. Ten or so is a good stock, and the best improvisation fuel available,
because anything drawn from here is consistent by construction. Spend them when
a scene needs something; carry the unspent ones forward rather than starting
fresh.

**Unrevealed** — what the player has not worked out yet, and what they've got
wrong. Track wrong theories deliberately, and **record how many times each has
been stated or acted on.** A wrong reading the player is merely entertaining is
theirs to test. A wrong reading held twice, or paid for once, is one the world
owes them a correction on — a new clue where they are already looking, someone
who knows saying a true thing, or a flat out-of-character "your character
wouldn't think that." **Never leave a standing instruction here not to correct
something.**

## `gm/characters/`

One file per character, named for the character, started from `TEMPLATE.md`.

- **VOICE** — 3–5 **verbatim** lines. Pick them for being characteristic, not
  for being good; the flat, awkward or repetitive line is often the more useful
  sample. Never paraphrase a voice sample — a description of a voice is not a
  voice. Record what they **can't say** as well as what they do: the register
  they never reach for, the admission they can't make, the word they'd never
  use. A voice is a ceiling as much as a vocabulary.
- **INTENTION** — what they're for (what this character does for the campaign),
  what they want, what they'd never do. You would write these for a plot as a
  matter of course; write them for people too.
- **POSITIONS** — what they've committed to, to whom, and what it cost.
  Cross-referenced with `player-facing/POSITIONS.md` when the table saw it.
- **Knows, believes, lies** — what this person can tell the player and how
  reliable it is. **Knows:** true things they'd say if asked the right way.
  **Believes:** what they'd assert sincerely that isn't so. **Lies about:** what
  they'd knowingly misrepresent, and why. **Won't say:** true things they'd
  withhold. Cross-referenced with `gm/CLUES.md`.
- **Facts** — what's true about them, marking what the player doesn't know.

## `player-facing/STATE.md`

The ledger of things the player knows: money, gear, holdings, injuries, time of
day, where everyone is, who owes whom. Terse, ugly, revised freely — this file
is meant to be overwritten, not appended. What the player *doesn't* know goes in
`gm/STATE.md`.

## `player-facing/RECORD.md`

What happened, in play order. Append as you go — small bits during play, not a
write-up at the end. Never tidy it; the mess is the point.

Only what came from play goes here. **Quote the player rather than describing
them.** "I'd rather not say" is worth more than *declined to answer*.

## `player-facing/POSITIONS.md`

Something a character committed to, out loud or by acting: what they said, to
whom, and what it cost them. Loosely:

> **Who** — what they committed to. To whom. What it cost. *(session/scene)*

A man who looks at stolen property in a cart and decides to say nothing has
taken a position, and it is the most important thing that happened in that
scene. Positions don't survive unless they're written down; a remembered one is
already lost.

## `player-owned/`

The player's. One file per character. Don't edit without permission — see the
first axis above.

`LINES-AND-VEILS.md` is the exception that isn't a character: it's the player's
standing settings, and it outlasts the campaign. **They are settled, and you do
not ask about them at the start of a session.** Lines stay out entirely; veils
can exist but happen off-page, and "none recorded" is the setting rather than an
unanswered question. Read it and move on — and write into it when the player
says something in play, which is the one edit here you don't need to ask for.

---

Not everything needs a POSITION or an INTENTION right away. Put in whatever the
world wants; texture that carries nothing today may turn out to be load-bearing
in three sessions, and it is better to have it. Just don't leave things
ambiguous — `gm/THREADS.md` exists for exactly that.
