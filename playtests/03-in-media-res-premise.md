# Playtest 03 — in media res without the premise

- **Date:** 2026-09-06
- **Where it ran:** a science-fiction campaign, first session, opening turn only
- **Prompt version:** `d00d9c4` (the post-review cut)
- **Scope reached:** the opening paragraph

**Relayed report, not a logged run.** The player reported it in conversation and
quoted the opening. Recorded because it is the first finding produced against
the revised prompt, and because the player reports having felt it before, in
other in-media-res openings, across campaigns.

## What happened

The session opened in motion. The relevant paragraph, verbatim:

> Huvv's noodle counter is forty feet down and across, shutters pulled, the
> little hand-painted sign with six arms on it swinging slightly in the airflow.
> Huvv paid you forty credits for this. She apologised for the amount twice,
> which is more than most people manage, and she said the word "supplier" the
> way people say the name of someone who's hurt them.

The player's report: *"I don't know what Huvv paid me for."* They could infer
from their character sheet that they were a detective and that a supplier was
somehow involved, and nothing further — not what about the supplier they had
been hired to find out.

## Diagnosis

**The paragraph is the emotional colouring of a fact that was never stated.**
The fee is characterised (small, apologised for, twice). The word "supplier" is
characterised (said like the name of someone who hurt her). Every detail is a
reaction to a job, and the job never appears. "Huvv paid you forty credits for
*this*" has no antecedent anywhere in the fiction, because it is the first
session and there is nowhere for one to be.

This is a natural prose instinct rather than a lapse — the telling detail in
place of the plain statement is usually the better writing. It fails in exactly
one place.

**The player's and the character's knowledge diverge at exactly one moment: the
opening of a first session.** At every other point in play the player was
present for everything the character learned. At a first session's open the
character has a whole life and the player has nothing, and
`notes/player-facing/STATE.md` — defined as the ledger of what the player knows
— is still empty. In media res deliberately starts after things have happened,
so it maximises the one gap that has no other bridge.

**A rule in the prompt makes it worse.** *Report observation, withhold
interpretation* tells the GM not to summarise. What the player needs at an
in-media-res opening is precisely a summary: of their own character's briefing.
A rule that is correct in the middle of a mystery is wrong at the one moment the
character knows things the player does not.

The answer was already half-written. **Character competence is never withheld**
covers this — a character's knowledge of their own situation is competence — but
it is phrased reactively ("if the player is reasoning past what their character
would already know"), so nothing fires at scene-open.

**Not caused by "Open on something having moved."** The player suspected the
start-in-motion instructions, which is a fair reading of the file's disposition,
but that rule is scoped to resumed sessions and this was a first. The disposition
predates it.

## Change made

`CLAUDE.md` §Starting up gains **In media res is not in the dark**: opening
mid-situation means the situation is running, not that the player is missing its
premise, and a pre-send check —

> Could the player state what their character is currently trying to do, in one
> sentence, using only words that are on the page?

— followed by the instruction to say the plain version once and then colour it.

## Why this check is allowed and the clue-direction check was not

Playtest 02 rejected a rule of the form "make sure a clue's most natural reading
is the true one," on the grounds that the model that wrote the misleading clue
believed it pointed correctly, so a prospective check self-confirms.

This check is a different kind. It does not ask the model to predict how a
reader will interpret something. It asks whether a specific concrete fact — what
the character is trying to do — is present in the text, which is answerable by
inspection. Verification prompts that require judgment about the reader
self-confirm; verification prompts that require finding a string do not.

Worth holding onto as a general test for future rules: **can this be checked by
looking, or only by believing?**

## Follow-up not taken

A structural version exists: write what the character knew going in into
`notes/player-facing/STATE.md` as part of opening a first session, so the ledger
is populated from turn one and the divergence is visible in a file rather than
only in the prose. Not built — the pre-send check is cheaper and fires at the
right moment. Revisit if the check turns out not to hold.
