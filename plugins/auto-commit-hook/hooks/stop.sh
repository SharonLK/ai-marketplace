#!/usr/bin/env bash
# Stop hook — runs after Claude finishes a turn.
# Stages all modified tracked files and creates a commit if there are changes.

set -euo pipefail

INPUT=$(cat)  # consume stdin (hook input JSON — not needed here)

if ! git diff --quiet || ! git diff --cached --quiet; then
  git add -u
  MSG="chore: auto-commit changes from Claude session [skip ci]"
  git commit -m "$MSG"
  jq -n \
    --arg ctx "Auto-committed pending changes: $MSG" \
    '{
      "hookSpecificOutput": {
        "hookEventName": "Stop",
        "additionalContext": $ctx
      }
    }'
else
  jq -n '{
    "hookSpecificOutput": {
      "hookEventName": "Stop",
      "additionalContext": "No changes to commit."
    }
  }'
fi
