---
description: Use GitHub tools to interact with repositories, issues, and pull requests. Claude loads this when working with GitHub repos or when the user asks about PRs, issues, or branches.
when_to_use: GitHub repo operations — creating or listing issues, reviewing or merging PRs, browsing branches, searching code, or any task that requires reading from or writing to GitHub.
allowed-tools: mcp__github__*
---

## Available GitHub tools

The `github` MCP server provides tools for the GitHub API. Common operations:

- **Search / list** — find repos, issues, PRs by query
- **Read** — fetch issue/PR details, comments, file contents, commit history
- **Write** — create issues, open PRs, post comments, merge PRs

## Rules

1. Confirm `owner/repo` before any write action.
2. For destructive actions (close, merge, delete branch) confirm with the user first.
3. When listing results, summarise the top items and offer to paginate rather than dumping everything.
4. Authentication uses `GITHUB_PERSONAL_ACCESS_TOKEN` from the environment — never ask the user to paste a token into chat.
