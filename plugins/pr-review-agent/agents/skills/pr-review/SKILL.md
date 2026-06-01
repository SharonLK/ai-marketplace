---
description: Triggers the pr-reviewer subagent to review a pull request. Use when the user asks to review a PR.
when_to_use: "review this PR", "review pull request #N", "check the PR", or /pr-review.
disable-model-invocation: true
allowed-tools: Bash(gh pr *) Bash(gh repo *)
---

Delegate to the `pr-reviewer` subagent with the PR reference below.

PR to review: $ARGUMENTS

Pass along any focus areas the user mentioned (e.g., "focus on security"). When the subagent returns its report, relay the verdict and issues clearly. If the user wants to act on a finding (push a fix, request changes, approve), help them do so.
