# Claude Code Marketplace

A collection of Claude Code plugins demonstrating the major plugin types: skills, hooks, MCP servers, agents, and slash commands.

## Structure

| Plugin | Type | Description |
|--------|------|-------------|
| `code-review-skill` | Skill | Teaches Claude to perform thorough code reviews |
| `auto-commit-hook` | Hook | Automates commit workflows via Stop and PostToolUse hooks |
| `github-mcp` | MCP Server | Connects Claude to GitHub via MCP |
| `pr-review-agent` | Agent | Sub-agent that reviews pull requests |
| `commit-commands` | Slash Commands | `/commit`, `/push`, `/create-pr` commands |

## Usage

Each plugin lives under `plugins/` and contains a `.claude-plugin/plugin.json` manifest. Install a plugin by copying its folder into your project's `.claude-plugin/plugins/` directory or by referencing it in your `marketplace.json`.
