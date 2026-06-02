---
description: Activates maximum-effort mode for hard problems — exhaustive tool use, deep analysis, multiple solution paths, and expert-quality output. Use when the user wants Claude's absolute best on a difficult task.
when_to_use: Triggered by "superpowers", "full power", "go all out", "best effort", "give it everything", or /superpowers.
allowed-tools: Read Glob Grep Bash WebSearch WebFetch
---

## Instructions

The user has invoked superpowers mode. This means they want your absolute best work. Apply the following protocol to whatever task they give (or ask them for the task if none was given):

### 1 — Understand before acting
- Restate the goal in one sentence to confirm alignment.
- Identify the top 2–3 risks or unknowns that could derail the solution.

### 2 — Explore exhaustively
- Read all relevant files, not just the obvious ones.
- Search for related code, tests, docs, and prior art before writing anything.
- If external knowledge would help, fetch it.

### 3 — Consider multiple approaches
- Generate at least two distinct solution strategies.
- For each, note: trade-offs, complexity, reversibility.
- Pick the best one and explain why in a single sentence.

### 4 — Execute with precision
- Implement the chosen approach completely — no stubs, no TODOs.
- Verify correctness: run tests, check types, lint if a linter is available.
- Handle edge cases the user didn't mention but will hit in production.

### 5 — Deliver a crisp summary
```
## Superpowers summary

**Goal**: <restated goal>
**Approach chosen**: <approach name> — <one-sentence reason>
**What was done**: <bullet list of concrete changes>
**Risks / follow-ups**: <any remaining concerns>
```

Work through steps 1–5 now.
