#!/usr/bin/env bash
# Update a campaign's GM infrastructure from the template it was made from.
#
# A repository created with "Use this template" shares no history with the
# template, so git pull refuses to merge and --allow-unrelated-histories would
# try to merge the template's blank notes/ over a campaign's live ones. Instead
# this reads the infrastructure paths out of the template's tree and leaves
# everything that holds play alone.
#
#   scripts/update-from-template.sh [<remote-url-or-path>] [<branch>]
#
# Defaults to the upstream GM-infrastructure repository and that remote's HEAD
# branch. Run it between sessions, never during one, and read the diff before
# committing: the prompt is the thing that runs your game.

set -euo pipefail

TEMPLATE_URL="${1:-https://github.com/awenonian/GM-infrastructure}"
BRANCH="${2:-}"
REMOTE=template

cd "$(git rev-parse --show-toplevel)"

if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "Working tree has uncommitted changes. Commit or stash them first —" >&2
  echo "you want the update to be a diff you can read on its own." >&2
  exit 1
fi

if git remote get-url "$REMOTE" >/dev/null 2>&1; then
  git remote set-url "$REMOTE" "$TEMPLATE_URL"
else
  git remote add "$REMOTE" "$TEMPLATE_URL"
fi

git fetch --quiet "$REMOTE"

if [ -z "$BRANCH" ]; then
  BRANCH=$(git remote show "$REMOTE" | sed -n 's/.*HEAD branch: //p')
  [ -n "$BRANCH" ] || { echo "Could not determine $REMOTE's default branch; pass one." >&2; exit 1; }
fi
echo "Updating from $REMOTE/$BRANCH"

# The product: the prompt, the path-scoped rules, the scripts, the docs.
PATHS=(
  CLAUDE.md
  README.md
  .claude
  scripts
  docs
)

# Guidance-only files that live inside notes/. These ship as the starting state
# of a campaign and hold no play, so they can be taken wholesale. Anything in
# notes/ that is NOT listed here holds campaign content and is never touched:
# STATE.md, RECORD.md, THREADS.md, CLUES.md, POSITIONS.md, CAMPAIGN.md, and
# everything under player-owned/ except its README.
PATHS+=(
  notes/README.md
  notes/gm/README.md
  notes/gm/characters/README.md
  notes/gm/characters/TEMPLATE.md
  notes/gm/plans/README.md
  notes/player-facing/README.md
  notes/player-owned/README.md
  playtests/README.md
  playtests/TEMPLATE.md
)

# Only ask for paths the template actually has at that revision, so a rename
# upstream doesn't abort the whole update.
EXISTING=()
for p in "${PATHS[@]}"; do
  if git cat-file -e "$REMOTE/$BRANCH:$p" 2>/dev/null; then
    EXISTING+=("$p")
  else
    echo "  skipping $p — not in the template at this revision"
  fi
done

[ ${#EXISTING[@]} -gt 0 ] || { echo "Nothing to update." >&2; exit 1; }

git checkout "$REMOTE/$BRANCH" -- "${EXISTING[@]}"

echo
if git diff --cached --quiet; then
  echo "Already up to date."
  exit 0
fi

echo "Staged changes:"
git diff --cached --stat
cat <<'EOF'

Nothing is committed yet. Read the diff before you do:

    git diff --cached

Two things worth checking by hand, because this script cannot do them:

  * CLUES.md, and the other stateful notes, carry guidance prose in their
    headers as well as campaign content. Updated guidance in those headers does
    not reach a campaign in progress. If a template change touched one, port it
    by hand.
  * Your CAMPAIGN.md holds house rules and lines and veils. It is never
    overwritten, but a prompt change may assume something new of it.
EOF
