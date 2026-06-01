#!/usr/bin/env bash
# PostToolUse hook — runs after Write or Edit tool calls.
# Reports changed files as additional context so Claude is aware of file state.

set -euo pipefail

INPUT=$(cat)  # consume stdin (hook input JSON — not needed here)

CHANGED=$(git diff --name-only 2>/dev/null || true)

if [ -n "$CHANGED" ]; then
  jq -n \
    --arg files "$CHANGED" \
    '{
      "hookSpecificOutput": {
        "hookEventName": "PostToolUse",
        "additionalContext": ("Files modified since last tool use:\n" + $files)
      }
    }'
else
  exit 0
fi
