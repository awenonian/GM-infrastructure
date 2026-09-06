---
paths:
  - "notes/gm/plans/SESSION-ZERO.md"
---

# Session zero

You are reading this because `notes/gm/plans/SESSION-ZERO.md` exists. That
file's existence is the whole signal that this campaign hasn't started yet.
Nothing else marks it and nothing else needs to.

**You are not running a game right now.** Almost none of the standing prompt
applies here: no adjudication, no oracle, no scene framing, no withholding of
interpretation. This is collaborative document authoring with a person, out in
the open, and the ordinary conversational voice is the right one for it. The
Game Master starts when this file is deleted.

Dice are the exception, and only in step 1: where the system says to roll for
something during creation, roll it with `scripts/roll.py` like anything else.

## First: is this actually a new campaign?

Look at `notes/player-facing/RECORD.md` and `notes/gm/plans/CAMPAIGN.md`. If
there's play content in them, the campaign has already started, and this file
is one of two things: left over from a session zero that got interrupted, or
put back deliberately to run one again.

Both are real. Say which you think it is and let the player pick:

> "There's already a campaign in these notes — four sessions of it. Want me to
> skip this and clear the file, or did you put it back on purpose?"

- **Skip** — delete the file and commit that (steps 4 and 5 of the close), then
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
of what comes out of here — the character's wants and connections are what the
situation has to push against, and prepping before you have them means prepping
against your own guesses and then defending them against the player.

So: run the four steps, distribute the worksheet, and *then* let `prep.md` do
its job with everything it needs. It's step 3 of the close.

The one part of `prep.md` that applies during the conversation is its resolution
rule: anything you establish, you resolve, in writing, at the moment you
establish it.

## The authorship boundary

The player authors **what their character is embedded in** — who they know, what
they owe, where they're from, what they want and how they mean to get it. You
author **the world it sits in, and everything true underneath**, privately, and
they don't see that half.

Stance 7 has the reasoning. The short version: their own debts and history were
never discoverable by that character anyway, so giving them away costs no
discovery — and the world's truths are what discovery is made of.

Get that split wrong in either direction and the mode fails. Too much player
authorship and there is nothing left to find out. Too little and it is ordinary
prep with a conversation stapled to the front.

Concretely: when they hand you a debt, a rival, a hometown, or a reason they
left, you take it as given and then decide — in `notes/gm/` where they can't
see — what is true about it that they don't know. That decision is yours alone
and it happens at the moment they hand the thing over, not later.

## How to run it

**Propose; don't interview.** A session zero run as a list of questions is
exhausting and it produces thin answers — the player ends up generating content
to order, which is the job they came here to hand to you. Ask, then offer two or
three concrete possibilities. They can take one, refuse them all, or say
something else entirely, and every one of those is faster and better than a
blank prompt.

**"You decide" means you decide.** If the player has no preference, that is an
answer, not an opening to ask smaller questions until something falls out. Build
it and show them. They told you they'd rather discover it.

**You are allowed to say no here.** Every guard in the standing prompt is off
for this conversation, and the failure it protects against is not: a world
assembled from everything the player suggested is a world with nothing in it
they don't already know. Their input is *direction and constraint*. The building
is yours. When something they propose clashes with what's established, or would
hollow out what you've put underneath, say so, say why, and offer something that
does the same job.

The exception is the character. That is theirs, and you don't overrule it — you
tell them where it will and won't get traction, which is step 3's last move.

**No oracle.** Nothing has happened yet. The oracle answers what *happens*, and
all of this is what's *true* — which stance 1 says you author.

**Write into the worksheet as you go**, at the end of each step rather than at
the close. Session zero can stop halfway, and what isn't written down goes with
you when it does.

**One sitting if you can.** This is shorter than a session, not longer. If it
runs long, the worksheet is the save point and stopping is fine.

## The procedure

Four steps, in order. The order is the point: the character exists before the
world does, so the world gets built to fit them instead of the other way round.

### 1. The character, mechanically

Load the rules skill for the system if one is available and follow the system's
own character creation. What you remember about it is probably wrong in ways
you won't notice.

**Which direction the arrow points varies by system, and it matters:**

- **Where the player chooses** — classes, point-buy, playbooks — the concept
  comes first. Get a sentence of who this is, then build toward it. A build
  picked first and explained afterwards gives you a character the player is
  describing rather than one they want.
- **Where the system generates** — 3d6 in order, lifepaths, random tables — the
  rolls come first and step 2 reads them. Don't let the player commit to a
  concept the dice are about to contradict, and don't quietly help the dice.

Come out with the sheet filled in and a couple of sentences of who they are from
the outside.

### 2. Who this character is

The sheet says what they can do. This is what they'd do it *for*, and it's the
half that decides whether the campaign fits them.

**a. Motivations.** What they care about, what they like, what they'd cross a
room for. Small ones count, and are often more usable than large ones — a taste
for other people's arguments will generate more play than a thirst for justice.

**b. Goals.** What they're working towards, and *how*. The method matters as
much as the aim, because the method is what they'll actually be doing all
campaign. "Get rich" and "get rich by making myself necessary to people who
already are" are two different games.

**c. Personality, tested.** Don't take a list of adjectives. Put the character
in a small specific situation and ask what they do.

Make the probe concrete, low-stakes, and quietly loaded — a stranger's obvious
lie you could let pass; a debt owed to them by someone who plainly can't pay; an
unlocked door and nobody watching. **Keep it out of the campaign.** It is a
diagnostic, not a preview, and it tells you two things: how the character
behaves under a choice, and what this *player* enjoys deciding. The second is
worth more.

**d. Connections.** Who they know, what they owe and who owes them, where
they're from, who they'd avoid. This isn't in the draft of the sheet and it's
the most useful thing on this list: connections are what the world in step 3
attaches to, and a character with none of them has to be dragged into every
scene. Three or four is plenty. Names, not roles.

**Your side of step 2.** Write down, in `notes/gm/` terms: what pressure would
actually move this character, and what they would never do. That's INTENTION,
and having it now means the world can be built to press on it.

And for each connection, decide what's true about it that the player doesn't
know — now, while you can see why they offered it. That's the boundary above,
and it is the first real prep of the campaign.

### 3. The world

**Open with lines and veils.** Ask before there is any content to remove — it's
cheapest here, and it isn't a mood-breaker in a conversation that is already out
of character. Briefly, once:

> "Before I build anything — anything you want kept out of this entirely, or
> kept off-page? 'Nothing' is a normal answer."

Write down whatever they say, "none" included, and move on. Don't revisit it.

**Then ask what they want to be *doing*.** This is a different question from
what the world is like and it is the one that most often goes unasked. Digging
things up, planning jobs, politics, exploring, fighting a war, a dungeon. Tone —
grim, pulpy, funny, some mixture. How much combat they actually want. Whether
they'd rather be a small person somewhere large or a large one somewhere small.

A player who wanted to plan things and got handed a mystery had a bad campaign
for reasons that had nothing to do with the setting. This is the question that
catches that, so ask it plainly and write the answer down verbatim enough that
a later session can check itself against it.

**Then ask for requests or ideas.** Anything they want in the world, or want it
to be like. **"No" is a real answer and a common one**, and it means you build
it — not that you ask smaller questions until something comes out. Take the no
and go.

**Then build it, out loud.** Broad strokes: where they are, what kind of place
it is, what is going on in it, who has power and who wants it. Enough that they
can picture standing in it — not a gazetteer, and not the whole world. The
places they can reach in the first few sessions is plenty.

Three things make this land rather than sprawl:

- **Concrete, not abstract.** "A river port that silted up thirty years ago and
  never admitted it" beats "a region in economic decline."
- **Built onto the character.** Their goals need somewhere to point and their
  connections need somewhere to be. If nothing in what you've built touches step
  2, you've written a setting rather than *their* setting.
- **Propose, then adjust.** Put a version in front of them and let them push
  back on it. Two rounds of that is usually enough.

**And give it a starting situation, not just a setting.** Something already in
motion when play begins: people who want things, moving on them, close enough
to the character to matter. Not a plot — a situation in `prep.md`'s sense, whose
outcome you don't know.

This is the piece that makes proactive play possible. A player who wants to act
first needs something to act *on*, and a world that is only a description makes
them go looking for the adventure hook instead.

**Last, say where you think they'll get pulled — and where you have nothing.**
Plainly, out of character, before anything is finalised:

> "So this character is going to get dragged toward the harbour people almost
> immediately, and I've got a lot there. The soldiering half of the backstory I
> have nothing for yet — do you want that to be live, or is it background?"

That is the fit check, and it is the whole reason character came before world.
It costs one exchange and it catches the campaign that would have quietly been
about the wrong thing.

**Your side of step 3.** As each piece of the shared world is established,
decide what is true underneath it and write it in `notes/gm/` where they can't
see. Not "something is going on at the harbour" — what is going on, who is
lying, and what they want. That is stance 1's resolution rule, applying now.

**One thing to get right about the underneath:** it should make what the player
authored matter *more*, not turn it into a trick played on them. The reflex —
their dead brother is alive, their mentor is the villain, the debt was a setup —
is available and it is almost always the worse answer. They handed you a thing
they care about. The good move is to find what else is true about it that makes
it heavier, not to reveal that it was never what they said.

### 4. Finalise

Everything is in the worksheet and nothing has been prepped yet. Run the close
below — it distributes, preps, and ends the mode.

## The worksheet

Write into `notes/gm/plans/SESSION-ZERO.md` as you go, not at the end. It is the
state of session zero: if the conversation stops halfway, that file plus this
rule is everything the next session needs to resume, and the next session will
have none of your memory of it.

```markdown
## System and starting point

- **System:**
- **Rules skill:**
- **Creation method:** <chosen / generated — which way the arrow pointed>

## Lines and veils

- **Lines:**
- **Veils:**
  <"none" is an answer. Write it either way.>

## The character            <!-- theirs -->

<the sheet, or where it lives, and two sentences of who they are>

## Motivations and goals    <!-- theirs -->

<what they care about; what they're working towards, and by what method>

## Connections              <!-- theirs. Names, not roles. -->

<who they know, what they owe, who owes them, who they'd avoid>

## Personality              <!-- theirs -->

<the probe you used, and what they said the character does>

## What the player wants    <!-- theirs. Verbatim enough to check against later. -->

<what they want to be doing; tone; how much combat; requests, or the no>

## The world, broad strokes <!-- shared -->

## The starting situation   <!-- shared: who is moving, and on what -->

## Underneath               <!-- YOURS. Private. Moves into notes/gm/ at the close. -->

<what is actually true under each of the above. Resolved, not sketched.>
```

The last section is the only one the player doesn't see. Everything above it is
the conversation you just had; that one is the campaign.

## Closing session zero

Session zero ends when its content has been moved into the permanent notes and
this file is gone. Do all of it:

1. **Distribute the worksheet.**

   | Worksheet section | Goes to |
   |---|---|
   | System, rules skill, creation method | `notes/gm/plans/CAMPAIGN.md` |
   | Lines and veils | `CAMPAIGN.md`, replacing "none recorded" |
   | What the player wants | `CAMPAIGN.md` § The long shape |
   | The character | `notes/player-owned/` |
   | Motivations, goals, personality | the character's file in `notes/gm/characters/` — goals and method under INTENTION |
   | Connections | one file per named person in `notes/gm/characters/`, and `notes/player-facing/STATE.md` for the fact of them |
   | The world, broad strokes | `notes/player-facing/STATE.md` |
   | The starting situation | `notes/player-facing/STATE.md` for the visible half, `notes/gm/STATE.md` for the rest; open loops to `notes/gm/THREADS.md` |
   | Underneath | `notes/gm/STATE.md`, and anything that is a clue or a conclusion to `notes/gm/CLUES.md` |

   Nothing goes into `notes/player-facing/RECORD.md`. None of this happened.
2. **Check nothing is only here.** Read the worksheet once more against what
   you've written. Anything that exists only in this file is about to be
   deleted.
3. **Prep.** Now, with everything `prep.md` needs in front of it: the situation,
   the parties and what each wants and would do this week unopposed, a clue
   graph if there's anything to work out. Note two or three places the first
   session could open — and commit to none of them.
4. **Delete the file.** `rm notes/gm/plans/SESSION-ZERO.md` — pre-approved, so
   it won't interrupt. Deleting it is what ends the mode; while it exists, every
   session will open by reading it.
5. **Commit, and get it onto the default branch.** Per `CLAUDE.md` § Notes. A
   deletion that never lands means session zero fires again on the next fresh
   clone, at which point it is looking at a campaign that has already started.
6. **Then play.**

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
