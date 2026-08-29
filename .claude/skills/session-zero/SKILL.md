---
name: session-zero
description: Run session zero for a new campaign in this repository — character creation, the collaborative setting and situation build, and the private GM prep that follows. Use when a campaign has not held its session zero yet, or when the player asks for one.
---

# Session zero

> **First pass.** The frame below is built and load-bearing — the mode
> boundary, what it supersedes, where its output lands, and how it ends. The
> contents of the phases are a sketch and are meant to be designed properly.
> Don't treat a thin phase as permission to improvise past it; treat it as the
> next thing to write.

This is not play. It is the meeting before the campaign, and you are running it
as yourself, out of character, with the player.

Its output is written into `notes/`, and the first session of play then starts
cold from those files like any other session. That is the test of whether this
worked: a Claude with none of today's memory should be able to open the notes
and run the campaign you two just built.

## What this mode changes

While session zero is running, these parts of `CLAUDE.md` are **suspended**:

| Suspended | Because |
|---|---|
| Adjudication, in full | Nothing is being adjudicated. There is no fiction yet for an action to succeed or fail in. |
| The oracle | You are not the only mind in the room today. The player is the other one, and using dice to answer questions they should answer is the same abdication in reverse. |
| Scenes | Nothing is being framed or narrated. Don't open on a scene, however good. |
| Mysteries → *Then stop* | Withholding interpretation is a play-time rule. Here you are talking about the game with a collaborator, in the open. |
| Addressing the character | Talk to the player, by name if you have it, as yourself. |

These still hold, unchanged, and matter more here than usual:

- **Safety.** Lines and veils get *set* today rather than read — this is the one
  session that owns that conversation. Check in when you are pushing.
- **Notes.** Everything agreed goes into `notes/` as you go, not in a write-up
  at the end. `.claude/rules/notes.md` loads when you open them.
- **Dice.** Character creation rolls go through `scripts/roll.py` like any
  other roll. A stat line you wrote out is a stat line you chose.
- **Tone.** Don't praise every idea the player has. An enthusiastic yes to
  everything is the same failure the play prompt is built against, wearing the
  clothes of a good collaborator.
- **Prep.** `.claude/rules/prep.md` governs what you write down privately, and
  its no-placeholders rule is absolute here: today is when the boxes get their
  contents.

One rule is specific to this mode, and it is the one to get right:

> **The player authors the situation. You author what is underneath it.**
>
> Their reach is their character, who that character knows, what they owe and
> are owed, what they want, and the shape of the place it all happens in. Yours
> is what is actually going on — who is lying, what the thing in the middle
> really is, what happens if nobody interferes.
>
> Too much player authorship and there is nothing left to find out. Too little
> and this was prep with extra steps. When you are unsure which side a question
> falls on, ask whether the campaign would still have a mystery if the player
> knew the answer.

## The phases

*Sketch. Each is a placeholder for a designed procedure.*

1. **The system, and how we're doing this.** What are we playing, and is there
   a rules skill for it? Load it now; character creation is the first place
   half-remembered rules do damage. Record it in `CAMPAIGN.md`.

2. **Lines and veils.** Ask plainly, once, out of character. Write the answers
   into `CAMPAIGN.md`. "Nothing comes to mind" is a real answer and gets
   recorded as one — no later session should have to ask again.

3. **Character creation.** By the book, with the player, rolling where the book
   rolls. The sheet is theirs: it lands in `notes/player-owned/`.

4. **The character's world.** Who they know, what they owe, where they're from,
   what they want. This is the part that can't be prepped for them, and it is
   the part that gives the world something to push against. Every name they
   give you becomes a file under `notes/gm/characters/`.

5. **The situation, built together.** The premise, the place, and the trouble
   that is already running. Player-authored, and written where the player can
   see it: `notes/player-facing/`.

6. **What's actually going on.** Alone, after. The truth under the situation
   the two of you just built, resolved and written down in full:
   `notes/gm/STATE.md`, `notes/gm/plans/CAMPAIGN.md`, `notes/gm/CLUES.md`.
   The player does not see this and does not get asked about it.

7. **The first thing that happens.** Not a scene — the situation the first
   session opens on, and why it can't wait. `notes/gm/plans/`.

## Ending it

Session zero is done when a cold session could pick up the campaign from the
notes alone. Then:

1. Set the session zero line at the top of `notes/gm/plans/CAMPAIGN.md` to
   `held <date>`.
2. Tell the player what you built, briefly, and that the next session starts
   play.

Session zero can run long and can span more than one sitting. It is finished
when that line says so and not before — until then, a new session reads
`not yet held` and comes back here, which is the intended behaviour rather than
a failure to resume.
