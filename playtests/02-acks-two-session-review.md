# Playtest 02 — ACKS, two sessions, read end to end

- **Date of review:** 2026-09-06
- **Where it ran:** `awenonian/ACKS-1`, Claude Code on the web, sessions 1 and 2
- **Prompt version reviewed:** `821c6a3`
- **Transcripts:** `ACKS-1` → `playtests/01-acks-character-creation.md` (session 1,
  verbatim with tool calls) and `playtests/current.md` on branch
  `claude/game-session-2-ewr0yy` (session 2, GM prose and player turns verbatim,
  tool actions summarised inline)
- **Scope reached:** character creation, one investigation scene, one travel
  leg, one long social scene. No combat, no danger, one die roll

**This is a review, not a run.** Both sessions were played first and read
afterward, against the whole repository. The player's own account of these and
of earlier campaigns is the other half of the evidence and is quoted where it
decided something.

## The player's summary

Not as good as previous sessions. Their hypothesis was that generic GM advice
had displaced focused advice. The review's version is narrower: the advice was
not generic, it was **doctrinal** — the prompt carried the ethics of GMing
(what is true, who decides, what gets gated) and nothing about the performance
of it (how much you say, when you stop, how you hand the table back). There was
no rule about the shape of a turn, and turn shape is most of what went wrong.

## What held

- **Roll before you narrate.** 100% compliance. Every uncertain outcome has a
  visible tool call preceding it.
- **The oracle was obeyed**, including against its own plan. The one scene
  interruption produced the campaign's most durable thread.
- **Rulings persisted.** Three made in session 1, applied consistently in
  session 2.
- **No hallucinated system rules** in two sessions with a rules skill loaded.
- **The notes are genuinely good.** A different author could write the next
  scene from them. This turns out to be double-edged — see below.

## Findings

### 1. The GM writes nine times as much as the player

9,664 words to 1,112 across session 1. Median GM turn 387 words against the
player's 74; longest 1,552. Five of fifteen substantial turns end on a bulleted
state-of-play and "What do you do?"

That menu is the `[SUGGESTIONS]` block stance 5 explicitly rejected,
reimplemented in prose. Its parent is **§Say what's at stake first** — a
pre-roll rule that generalised into pricing every decision — assisted by "move
information toward whoever can act on it."

### 2. The prompt's register is mirrored, and amplified

Bold spans per 1,000 words: `CLAUDE.md` 13.9, GM narration 23.1. Em-dashes 11.7
→ 13.3. Eleven of fifteen substantial turns open a paragraph with a bolded
lead-in; five put markdown headers inside a scene; four put tables in narration.

3,750 words of essay in context every turn is a style exemplar whether it was
meant as one or not. This is the argument for cutting rationale prose that a
"but the reasoning is what holds the line" argument has to beat.

### 3. Sycophancy moved rather than disappearing

The dice are clean; the guards worked where they were pointed. The failure
relocated to **world-fact generosity**, where nothing was watching.

Every line of player inquiry lands, richly and immediately. The clearest case:
the player asks whether they passed a socket where a stone should have been.
The GM says no — then invents that the character records road-legs by habit and
produces a table that is the strongest single piece of evidence in the case,
with a testable prediction attached.

In session 2 it happens twice more, on foundational facts, and the player caught
both:

- The player observed that moving one stone along a chain extends nothing. The
  GM invented an overshooting imperial survey to make it work.
- The player observed that "about the fifth stone" doesn't survive one-league
  spacing over eleven leagues. The GM said *"Straight correction, my error,"*
  scratched it, and substituted a better identifier that makes the fraud work.

Note where this happens. The fully-prepped scene invents nothing. The hole in
the prep is where the ground moves. **Resolve-on-establishment works exactly as
far as the prep extends**, and the failure is entirely at its edge.

### 4. A clue whose natural reading is wrong, and a rule that locks it in

The stone's crisp cutting is core clue #1, meaning *something protected it* —
it lay face-down for three centuries. The natural forward reading is *it was
carved recently*, and the GM pushed that reading hard ("you can still feel the
chisel marks"; an NPC gets a splinter from it). The player built a forgery
theory and spent most of a session testing it.

Two rules then made it worse. **Never confirm a theory** forbade the correction.
**Report observation, withhold interpretation** made no exception for the
character's own expertise — a professional antiquary knows in seconds that a
recut inscription shows pale grooves, and the player had to reconstruct that by
argument.

The GM invented the missing exception itself in session 2 — *"character
competence, no throw"*, three times, well — and never applied it in session 1
where it was needed.

The prospective fix ("make sure a clue's natural reading is the true one") was
rejected: the model that wrote the clue believed it pointed correctly, so
verification self-confirms.

### 5. Second sessions go flat, and the notes are why

The player reports this pattern across campaigns and never the reverse: lively
first sessions souring into slow second ones.

Session 2 is made almost entirely of prepped content delivered in file order —
the road-leg test, the ford, the toll-taker, the memorandum, a spent loose clue.
The apparatus that makes session 2 possible (THREADS, CLUES with undelivered
rows, a written plan) is an accounting system, and it turns the session into
discharge.

The plan file's own headings did it: *where we left off* / *what is true and
must not drift* / *what is prepped and ready to be walked into* / *pressure, if
he stalls* / *the thing to hold back*. Four of five are deliverables. The one
that is the world acting is filed as a fallback for if the player stalls — and
`rules/prep.md` already asked for the right thing ("what each party will do this
week if nobody stops them") but the template had no slot for it, so it was never
written.

Session 2 also opened at 4am, at a hole, with everyone asleep, under an explicit
plan instruction to let the player move first. A resumed session opens where the
previous one ran out of energy, and that instruction — written to protect the
player's agency — produced a GM standing still.

### 6. Two sessions, one die roll

Knowledge (history), made. **§Only roll when it matters** worked so well there
was nothing to fail forward from, in a campaign whose player names fail-forward
as the thing they like most. Its third bullet — "failure would just stall the
scene → don't roll" — is the wrong instruction for that player and was
sharpened rather than cut.

### 7. NPCs with a policy of unhelpfulness

**§NPCs do not solve the player's problems** produced a companion who refuses to
give an opinion three times in one session, and the rule wrote itself into that
character's file as a personality trait, so it persists as canon. The player's
verdict: the goal is stopping NPCs *driving*, and what they got was NPCs
unwilling to have opinions or act.

The counter-case is from an earlier campaign: a crew competently fighting
boarders is what made an in-character choice playable.

### 8. Pacing lost where the rule was present

A four-segment clock went from 2 to complete inside one session-2 conversation.
**§Don't resolve the tension immediately** was in the file at the time.

## Changes made

`CLAUDE.md` went from 475 lines to 244 (51% of words removed), then to 197 after
player review of the survivors, then back to 247 with six rules added from the
player's account of what has worked. Net: **48% smaller.** Surviving text is
verbatim, so length is the only variable changed on the kept rules.

Removed: the failure-mode essay, stakes-before-the-roll, a good argument is not
a success, never a bare "no", never an unconditional "yes", failure by domain
(including telegraphed lethality — see the open risk), let them win, when the
player stalls, most of Scenes, three-clues-per-conclusion, move information
toward whoever can act, things move offscreen, nobody explains the whole
situation, never confirm a theory, NPCs do not solve the player's problems, all
three note-keeping triggers, all of Tone, check in when you're pushing, oracle
`ask`, and the clause "that the call is visible in the transcript is the point."

Added, all from play rather than research: failure buys something; a character
choice is priced, not punished; open on something having moved; a wrong reading
held twice is yours to fix, with character competence never withheld; the world
moves and moving is not punishment.

Outside the prompt: `rules/prep.md` and `notes/gm/plans/README.md` gained the
deliverability test — **if a plan line can be delivered, it is plot prep** — and
`notes/gm/CLUES.md` now counts how often a wrong theory has been stated or acted
on, and forbids leaving a standing instruction not to correct one.

`docs/integration.md` marks every removal **cut**, with the observation behind
it. Stances 1, 3, 4 and 5 were rewritten.

## Open, deliberately

- **Telegraphed lethality is unencoded.** Cut as untested; nothing threatened
  anyone in two sessions. It is the least recoverable thing here to be wrong
  about. Restore at the first sign of danger.
- **Whether the roll rate recovers.** No new rule was added to force it. If the
  next session is also near-diceless, that is a rule problem and not a scene
  problem.
- **Session zero doesn't exist yet**, and the player intends to build it before
  the next run. A stated character goal is what "what does each party do next"
  pushes against, so several things that would otherwise be prompt text are
  waiting on it.

## Method note

Two sessions is a small n, and the player is explicit that they don't intend to
play many more, and that forcing it would make both the play and the
observations worse. Every quantitative claim above is reproducible from the
transcripts in `ACKS-1`; the qualitative ones name the turn they came from. The
selection effect on "first sessions are better" is real and acknowledged: a flat
first session makes a second one less likely to happen at all.
