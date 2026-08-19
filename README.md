# GM infrastructure

Boilerplate for running a tabletop RPG with Claude Code as the Game Master.

Fork it, say what you're playing, and play. The campaign's memory lives in the
repo, so a session can start cold — a fresh Claude with no recollection of last
week reads the notes and picks up where you left off.

## Using it

1. **Fork this repo.** One fork per campaign; the notes are the campaign.
2. **Start a Claude Code session in it** and declare the system and the
   starting point:

   > *"Let's play Starfinder, starting from character creation."*
   >
   > *"ACKS, with this character: …"*
   >
   > *"Resuming from last session."*

3. **Play.** From the second session on, open with a short recap of where you
   think you left off — off the cuff is fine, lossy is expected. That recap is
   information the notes structurally can't hold, and the GM is told to trust
   it over its own notes where the two disagree.

That's the whole ritual. Everything else is in `CLAUDE.md`, which Claude Code
loads automatically.

## What's here

| | |
|---|---|
| `CLAUDE.md` | The standing instructions. How to open a session, how to keep notes, how to plan, how to talk. This is the piece that does the work. |
| `notes/` | The campaign's memory, empty and ready. `notes/README.md` maps it. |
| `scripts/roll.py` | Dice. |
| `.claude/settings.json` | Pre-approves rolling dice and writing to `notes/`, so play isn't interrupted by permission prompts. Delete it if you'd rather approve each one. |

`CLAUDE.md` is deliberately system-agnostic — it's about running a game, not
about any particular game. The rules of whatever you're playing come from a
rules skill, if one is installed for that system; the GM is told to look rules
up rather than trust what it thinks it remembers.

## Dice

```
python3 scripts/roll.py '1d20+7'
python3 scripts/roll.py '4d6kh3' -n 6      # six ability scores
python3 scripts/roll.py '2d6+1' '1d8' 'd%'
```

`kh`/`kl` keep the highest/lowest N, `dh`/`dl` drop them. Dropped dice show in
parentheses. `--seed` makes a roll reproducible.

## The shape of the notes

Two axes. Directories are **who the notes are for** — the player's own sheet,
what the table knows, and the GM's private journal. Files are **what kind of
thing they are** — a ledger of state, an append-only record of play, positions
characters have committed to, verbatim voice samples, and intentions.

The distinction that earns its keep is between the ledger and the record. The
GM is told to invent freely in its journal — the world should have an answer to
every question — but to write only what actually happened into the record. The
failure mode is a plausible invention landing in the file that claims to be
authoritative.

See `notes/README.md`.
