---
description: Push the current branch to its remote tracking branch. Use when asked to push changes.
disable-model-invocation: true
allowed-tools: Bash(git status *) Bash(git log *) Bash(git push *)
---

Push the current branch to origin.

Steps:
1. Run `git status` to confirm there are no uncommitted changes.
2. Show commits that will be pushed: `git log @{u}..HEAD --oneline`.
3. Confirm with the user before pushing.
4. Run `git push` (or `git push -u origin <branch>` if no upstream is set).

Constraints:
- Never use `--force` or `--force-with-lease` unless the user explicitly requests it.
- If push is rejected due to diverged history, explain the situation and ask how to proceed.
