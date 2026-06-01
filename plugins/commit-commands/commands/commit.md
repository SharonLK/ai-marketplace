---
description: Stage tracked files and create a conventional commit with an auto-generated message. Use when asked to commit changes.
disable-model-invocation: true
allowed-tools: Bash(git status *) Bash(git diff *) Bash(git add *) Bash(git commit *)
---

Stage all modified tracked files and commit them.

Steps:
1. Run `git status` to show what will be staged.
2. Run `git diff --stat` to summarise the changes.
3. Draft a commit message in Conventional Commits format (`type: description`).
4. Confirm the message with the user before committing.
5. Run `git add -u && git commit -m "<message>"`.

Constraints:
- Never stage untracked files (`git add .`) unless the user explicitly asks.
- Never pass `--no-verify`.
- If there is nothing to commit, say so and stop.
