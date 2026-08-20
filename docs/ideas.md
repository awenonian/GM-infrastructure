# Ideas not yet built

Design ideas that are agreed or promising but not implemented. Each says what
it is, why it might work, and what would have to be true. Kept here rather than
in `integration.md` because these don't come from the research — they come from
noticing something while building or playing.

---

## Prep for the next session at the end of the current one

**The idea.** Session prep happens during the close of the previous session,
not at the start of the next one. First session excepted, since there is no
previous.

**Why it's likely better than prepping at the start:**

*The author who was there does the prep.* Prep at the start of a session is
written by an author with only the notes. Prep at the end is written by the
author who ran the thing — who knows which NPC landed, which thread the player
kept circling back to, which prepped beat quietly died. That is the same
argument the standing prompt already makes about the player's recap: it is
information the notes structurally cannot hold. Right now the GM only gets that
information *about* the last session; this would let it use its own equivalent.

*It turns the compression problem into a test.* The known failure of
end-of-session write-ups is that you compress and cannot feel what you're
compressing out. But if you have to write next session's plan from the notes
you just wrote, the plan becomes a check on them: prep that can't be built is
prep whose notes were insufficient — and you find that out while the session is
still in context and the gap is still cheap to fix. Prep-at-end is the
handoff's own test case.

*It moves the cost off the player's clock.* A long close can spin. A session
opening cannot; the player has just asked to play and is waiting.

**What would have to be true:**

- *The plan has to survive the recap.* The player's recap arrives after the
  prep now exists, and prep is stickier than conversation — the exact failure
  the prompt already warns about, newly load-bearing. The startup sequence
  would have to explicitly re-check the prep against the recap, not just the
  notes, and re-prep where they disagree.
- *Sessions don't always end cleanly.* A session that stops mid-scene has no
  close to hang prep on. There would need to be a recorded state for "prep is
  owed," so the next session knows to do it at the start rather than assuming
  it exists and running on nothing.
- *Elapsed real time is unknown at prep time.* Offscreen clocks advance between
  sessions, and the close doesn't know whether the gap is a day or a month.
  Probably: prep the situation, and advance the clocks at the start when the
  gap is known. That splits cleanly along prep-situations-not-plots anyway.
- *It has to reload after compaction.* Prep at the end of a session happens
  after compaction is likely to have occurred, so the prep guidance cannot live
  only in root `CLAUDE.md` — it has to be reachable when the GM opens a plan
  file. This is already handled: `.claude/rules/prep.md` is path-scoped and
  reloads on read.

**Open question.** Whether the close should also draft the *next* session's
strong start, or stop at the situation. Drafting an opening scene is close to
prepping a plot, and the player's first move may invalidate it — but a session
that opens on something concrete is worth a lot, and re-prepping one scene is
cheap. Probably: prep the situation, note two or three places the session could
open, commit to none.

**Status.** Not implemented. Would touch: the startup sequence in `CLAUDE.md`,
a new close sequence, and `notes/gm/plans/` conventions.

---

## A place to record rule-breaks observed in play

**The idea.** The practitioner literature recommends treating every observed
rule-break as a new prompt clause. There is nowhere to write down "the GM
confirmed a theory in session 4" when it happens.

**Why it matters.** The prompt is currently built entirely from research —
what other people found, generalised. Nothing in it comes from watching *this*
prompt fail. That is the highest-value source available and it is being thrown
away every session.

**What it would need.** A log the player or the GM can append to during play
without breaking the fiction, and a development-side habit of reading it before
editing `CLAUDE.md`. The awkward part is that the GM noticing its own
sycophancy is exactly what the prompt says it cannot reliably do, so the useful
entries will mostly come from the player.

**Status.** Not implemented. Tracked in `integration.md` as pending.
