# Playtest 04 — a thought read as speech

- **Date:** 2026-10-21
- **Where it ran:** a campaign in progress, mid-scene
- **Prompt version:** post-review, before this change
- **Scope reached:** one turn

**Relayed report, not a logged run.** The player described it in conversation.

## What happened

The player wrote a turn that was mostly plain prose with a quoted line at the
end. Their intent: the prose was interior thought, the quoted line was what the
character actually said out loud.

The GM had an NPC react to one of the thoughts.

## Diagnosis

**The marker was not the problem.** The player did mark the speech, with
quotes, which is about as legible as a convention gets. What the GM got wrong
was the inference that everything *outside* the quotes was therefore not
audible.

Reading the complement of a marker is a much weaker inference than reading the
marker, and it was especially weak here, because in this player's usage
unmarked prose has carried three different meanings:

- action and description,
- **a description of speech** — "I'll tell him all about the job", delegating
  the wording to the GM rather than typing it,
- and now interior thought.

So no notation scheme fixes this on its own. The overload is in the convention,
not in the reading of it.

## The rule that matters more than the table

**The costs are not symmetric, and they run one way.**

A thought treated as speech puts words in the character's mouth that the player
did not choose, and has somebody in the fiction react to them. Undoing that
needs a rollback. Speech treated as thought costs one sentence — "no, I said
that out loud" — and nothing is lost.

So the default is: **when it isn't clear whether something was said aloud, it
wasn't.** Nobody can un-hear a line. Plus the specific case, which is checkable
rather than a judgment call: **if a turn contains quoted text, that text is all
of what was said aloud.**

## Why the burden goes on the GM, not the player

The player offered to change how they type. Declined, mostly.

A notation the player has to hold mid-scene is a tax they will stop paying by
the third session, and this repository's own stance already puts the burden the
other way — the recap rule says that where the GM and the player disagree, the
player is right. Conventions should be unambiguous *when used* and the GM should
be safe *when they aren't*.

## Change made

`CLAUDE.md` gains **§Notation**, before Adjudication, because it governs how
every player turn is parsed and so fires before anything else does:

- quoted text is speech, and holds all of it;
- where it's unclear, it wasn't said aloud;
- unquoted prose can still delegate a line to write, so "unquoted means silent"
  is *not* the rule;
- `(parentheses)` are out of character, `*asterisks*` are thought, and neither
  is required;
- in-world text goes in a blockquote.

`README.md` gains the player-facing table, under **How the GM reads what you
type**, next to the out-of-character commands.

## Open

Whether `*asterisks*` read reliably as thought. They are conventional in
play-by-post, but the GM's own prose uses them for emphasis, so they do double
duty in a transcript. The explicit form — "Kita thinks:" — is unambiguous and
clunkier. Left to the player's taste, and the symmetry default is what covers
it either way.

Also untested, like most of the post-review prompt: this is a rule written from
one reported turn.
