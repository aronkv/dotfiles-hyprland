#!/usr/bin/env bash
# Publish quickshell/ from the dotfiles history to aronkv/dynamic-island,
# leaving out personal and runtime files. Works in a throwaway clone, so the
# live ~/.config tree is never checked out or rewritten. Only committed work
# is published. The split + filter are deterministic: a re-run reproduces the
# same commits plus the new ones, so the push is a plain fast-forward.
set -euo pipefail

remote=${1:-https://github.com/aronkv/dynamic-island.git}
private=(
    settings.json launcher-history.json theme-profiles.json activity.json
    notifications.json .kitty-theme-payload.json theme-t480-kitty-colors.conf
    localsend_cert.pem localsend_key.pem .qmlls.ini CLAUDE.md PROGRESS.md
    publish-island.sh '*.bak' '*.bak-*' '*.bak.*'
)

dots=$(git -C "$(dirname "$(readlink -f "$0")")" rev-parse --show-toplevel)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

git clone -q "$dots" "$tmp/repo"
cd "$tmp/repo"
git subtree split -q --prefix=quickshell -b island
FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch --prune-empty \
    --index-filter "git rm -rq --cached --ignore-unmatch -- ${private[*]@Q}" island >/dev/null

git push "$remote" island:main
