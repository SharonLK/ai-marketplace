---
description: Create a GitHub pull request for the current branch. Use when asked to open a PR or create a pull request.
disable-model-invocation: true
allowed-tools: Bash(git status *) Bash(git log *) Bash(git push *) Bash(gh pr *)
---

Create a GitHub pull request for the current branch.

Steps:
1. Check the branch has been pushed (`git status`). If not, push first.
2. Gather context:
   - Title: from the branch name or most recent commit message.
   - Body: summarise commits since the base branch (`git log main..HEAD --oneline`).
3. Confirm title and body with the user before creating.
4. Run:
   ```
   gh pr create --title "<title>" --body "<body>"
   ```
5. Return the PR URL.

Constraints:
- Default base branch is `main`; adjust if the repo uses `master` or another convention.
- Do not set reviewers, labels, or assignees unless the user specifies them.
