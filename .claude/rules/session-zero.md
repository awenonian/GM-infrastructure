---
paths:
  - "notes/gm/plans/SESSION-ZERO.md"
---

# Session zero

You are reading this because `notes/gm/plans/SESSION-ZERO.md` exists. That
file's existence is the whole signal that this campaign hasn't started yet.
Nothing else marks it and nothing else needs to.

**You are not running a game right now.** Almost none of the standing prompt
applies here: no adjudication, no dice, no oracle, no scene framing, no
withholding of interpretation. This is collaborative document authoring with a
person, out in the open, and the ordinary conversational voice is the right one
for it. The Game Master starts when this file is deleted.

## First: is this actually a new campaign?

Look at `notes/player-facing/RECORD.md` and `notes/gm/plans/CAMPAIGN.md`. If
there's play content in them, the campaign has already started, and this file
is one of two things: left over from a session zero that got interrupted, or
put back deliberately to run one again.

Both are real. Say which you think it is and let the player pick:

> "There's already a campaign in these notes — four sessions of it. Want me to
> skip this and clear the file, or did you put it back on purpose?"

- **Skip** — delete the file and commit that (steps 3 and 4 of the close), then
  carry on with the session as an ordinary one. Nothing to distribute.
- **Run it** — run it properly. Read the existing notes first, so what comes
  out extends the campaign instead of overwriting it, and carry the parts that
  are already settled forward rather than asking about them again. Re-running
  this on purpose — a second character, a new arc, the campaign turning out to
  be about something else — is a supported thing to do, not a mistake to talk
  the player out of.

An interrupted session zero needs no question at all. The worksheet below is
partly filled in; pick up where it stops.

## Prep comes after, not during

`.claude/rules/prep.md` also matches this directory, so it loaded alongside
this file. It is right, and it does not apply yet.

**Do the whole of session zero before you prep anything.** Prep is downstream
of what comes out of here — the character's connections and wants are the
things the situation has to push against, and prepping before you have them
means prepping against your own guesses and then defending them. Finish the
worksheet, distribute it, delete this file, and *then* open a plan file and let
`prep.md` do its job with everything it needs.

The one part of `prep.md` that applies during session zero is its resolution
rule: anything you establish, you resolve, in writing, now.

## The authorship boundary

The player authors the **situation** — their character, who they know, what
they owe, what they want, what corner of the world they're standing in. You
author what is **actually going on underneath it**, privately, and they don't
see it.

Get that split wrong in either direction and the mode fails. Too much player
authorship and there is nothing left to find out. Too little and it is ordinary
prep with a conversation stapled to the front.

Concretely: when they hand you a debt, a rival, a hometown, or a reason they
left, you take it as given and then decide — in `notes/gm/` where they can't
see — what is true about it that they don't know. That decision is yours alone
and it happens at the moment they hand the thing over, not later.

## The procedure

> **Not written yet.** The scaffolding around it — the trigger, the worksheet,
> the close, the boundary above — is settled; the steps themselves are the next
> piece of work.
>
> Until they exist, **do not improvise a session zero from this file and then
> delete it.** That spends the one moment the campaign gets at this. Tell the
> player the procedure is missing, and let them decide whether to wing it, to
> skip it, or to go and write it.

## The worksheet

Write into `notes/gm/plans/SESSION-ZERO.md` as you go, not at the end. It is
the state of session zero: if the conversation stops halfway, that file plus
this rule is everything the next session needs to resume, and the next session
will have none of your memory of it.

The skeleton below is provisional and gets settled along with the procedure.

```markdown
## System and starting point

- **System:**
- **Starting from:**
- **Rules skill:**

## Lines and veils

- **Lines:**
- **Veils:**

## The character            <!-- the player's; theirs to author -->

## Connections and wants    <!-- who they know, what they owe, what they're after -->

## The corner of the world  <!-- where they're standing, as the player understands it -->

## What's actually going on <!-- yours. Private. Moves to notes/gm/ at the close. -->
```

## Closing session zero

Session zero ends when its content has been moved into the permanent notes and
this file is gone. Do all of it:

1. **Distribute the worksheet.** System, starting point, rules skill, and lines
   and veils into `notes/gm/plans/CAMPAIGN.md`. The character into
   `notes/player-owned/`. Connections and wants into the character's file under
   `notes/gm/characters/` and into `notes/player-facing/STATE.md` as far as the
   table knows them. What's actually going on into `notes/gm/STATE.md`, and
   anything that's a clue or a conclusion into `notes/gm/CLUES.md`.
2. **Check nothing is only here.** Read the worksheet once more against what
   you've written. Anything that exists only in this file is about to be
   deleted.
3. **Delete the file.** `rm notes/gm/plans/SESSION-ZERO.md` — pre-approved, so
   it won't interrupt. Deleting it is what ends the mode; while it exists, every
   session will open by reading it.
4. **Commit, and get it onto the default branch.** Per `CLAUDE.md` § Notes. A
   deletion that never lands means session zero fires again on the next fresh
   clone, at which point it is looking at a campaign that has already started.
5. **Then prep, then play.**

Don't mark the transition with a ceremony. Move into the game.

## Re-arming it

To run session zero again later — a second character, a new arc — recreate the
file. Any file at that path that says the campaign is starting will do; this is
what it ships with:

```markdown
# Session zero

**This campaign hasn't started yet.** This file existing is what says so.

Reading it loaded the procedure — `.claude/rules/session-zero.md` if it didn't.
Follow that. It says what to write below as you go, and to delete this file at
the end. Deleting it is what ends session zero and starts the game.

---
```

Recreating it re-loads this rule, and the guard at the top will ask whether it
was deliberate before overwriting anything.
