# Playtest 01 — cold start, safety preamble

- **Date:** first cold run of the template
- **Where it ran:** hosted session, campaign repository made from the template
- **Prompt version:** 8684502
- **Scope reached:** the opening only

**This is a relayed report, not a logged run.** The player reported the
behaviour in conversation rather than through `log:`, and play didn't get far
enough to exercise adjudication, clues, or the oracle. Recorded anyway, because
it's the first evidence the prompt has produced about itself.

## What happened

The GM opened the session with a safety preamble instead of a scene. Verbatim:

> One housekeeping thing first, and then I'll shut up about it. At any point —
> mid-sentence, mid-scene — you can say stop, skip that, or rewind, and I'll do
> it immediately, no questions, no negotiating. I can literally un-narrate a
> thing and take another run at it, which a human GM can't. Use it whenever, for
> any reason, including "I'm just not enjoying this bit."

It then went on to negotiate lines and veils.

## Diagnosis

Not a failure of adherence. The prompt asked for both, in three places:

- `§Starting up` — "On a first session, settle lines and veils before play."
- `§Safety` — "Ask before the first scene."
- `§Safety` — "Tell the player this exists, once, at the start."

The GM followed all three, competently and in good order.

**The finding is about instruction shape, not about this content.** `CLAUDE.md`
also asks for a strong start — open on a problem or a choice — and housekeeping
beat it. A concrete triggered instruction ("on a first session, do X") wins over
an aspirational quality goal ("open well") every time, because one names an
action and the other names a standard. So *anything* phrased as a session-open
trigger will colonise the opening, which is the most valuable minute in the
session and the one that can't be retaken.

Worth auditing for on every future edit: an instruction that fires at session
start is competing for the opening whether or not it looks like it is.

## Change made

Move first-session housekeeping out of session time and into files the player
reads. The levers keep working; they stop being announced.

- Deleted the `§Starting up` trigger.
- `§Safety` now says lines and veils are already settled in `CAMPAIGN.md` — read
  them, don't ask — and that "none recorded" is an answer rather than a gap.
- Deleted "Tell the player this exists, once, at the start."
- Added an explicit "None of this is a preamble. Start the game."
- `CAMPAIGN.md` ships with lines and veils pre-set to "none recorded", plus a
  **Table commands** section addressed to the player documenting stop/rewind and
  `log:`. `README.md` carries the same.

The safety property is preserved rather than traded away: the stop command still
works whether or not it was announced, the check-in-when-pushing rule is scene
triggered rather than calendar triggered, and lines and veils are now editable by
the player in a file instead of negotiated under time pressure at the table.

Net: `CLAUDE.md` 479 → 480 lines, since the anti-preamble rule costs about what
the three triggers saved. The win is behavioural, not budgetary.
