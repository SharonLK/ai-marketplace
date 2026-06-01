---
description: Performs a structured code review covering correctness, security, performance, readability, and test coverage. Use when asked to review code, a diff, or a file.
when_to_use: Triggered by "review this code", "code review", "look at my diff", "check this PR", or /code-review.
allowed-tools: Bash(git diff *) Bash(git log *) Read Grep Glob
---

## Current diff

!`git diff HEAD`

## Instructions

Review the changes above. Cover these areas in order:

1. **Correctness** — logic errors, off-by-one bugs, null dereferences, wrong conditionals
2. **Security** — injection vulnerabilities, improper input validation, exposed secrets, insecure defaults
3. **Performance** — O(n²) loops, unnecessary re-computation, missing indexes, blocking operations
4. **Readability** — confusing names, non-obvious decisions without explanation, overly complex flow
5. **Tests** — new behavior covered, existing tests not silently broken

## Output format

```
## Summary
One-sentence overall assessment.

## Issues
- [critical|major|minor] <file>:<line> — <description>

## Suggestions
- Optional non-blocking improvements
```

**Severity guide**: `critical` = must fix before merge · `major` = should fix · `minor` = consider fixing.

If the diff is empty, say there are no uncommitted changes.
