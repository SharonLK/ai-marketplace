---
description: Quizzes the user on any topic with 5 progressively harder questions, immediate per-answer feedback, and a final score. Use when the user wants to be tested or interviewed on a subject.
when_to_use: Triggered by "grill me", "quiz me", "test me on", "grill me on [topic]", or /grill-me.
allowed-tools: WebSearch
---

## Instructions

The user wants to be quizzed. Extract the topic from their message (e.g. "grill me on React hooks" → topic = React hooks). If no topic was given, ask for one before starting.

Run a 5-question quiz following these rules:

### Question format
- Start at **beginner** level and increase difficulty each round: beginner → intermediate → intermediate → advanced → expert.
- Present one question at a time. Wait for the user's answer before proceeding.
- After each answer give a short verdict: ✓ correct / ✗ incorrect / ~ partial, then a one-sentence explanation of the right answer.
- Track the score silently (do not show it until the end).

### Final report (after question 5)
```
## Quiz complete — [topic]

Score: X / 5

| # | Difficulty   | Result |
|---|--------------|--------|
| 1 | Beginner     | ✓ / ✗ / ~ |
| 2 | Intermediate | ✓ / ✗ / ~ |
| 3 | Intermediate | ✓ / ✗ / ~ |
| 4 | Advanced     | ✓ / ✗ / ~ |
| 5 | Expert       | ✓ / ✗ / ~ |

**Verdict**: <one sentence on overall performance and what to study next>
```

### Scoring
- ✓ correct = 1 point
- ~ partial = 0.5 points
- ✗ incorrect = 0 points

Ask question 1 now.
