# Claude Code Marketplace

A reference repo demonstrating all five Claude Code plugin types. No application code — purely declarative content (JSON manifests, Markdown skill files, shell scripts).

## Structure

- `.claude-plugin/marketplace.json` — catalog manifest listing all plugins
- `plugins/` — one subdirectory per plugin, each with a `.claude-plugin/plugin.json` manifest

## Plugins

| Directory | Type | Entry point |
|---|---|---|
| `code-review-skill` | skill | `skills/code-review/SKILL.md` |
| `auto-commit-hook` | hook | `hooks/hooks.json` |
| `github-mcp` | MCP server | `mcp-servers/github/config.json` |
| `pr-review-agent` | agent | `agents/pr-reviewer.md` |
| `commit-commands` | slash commands | `commands/{commit,push,create-pr}.md` |

## Conventions

- Plugin manifests follow the `.claude-plugin/plugin.json` schema (name, displayName, version, description + type-specific keys).
- Hook scripts are bash — they won't run natively on Windows; use WSL or a Linux/Mac environment.
- All slash commands use `disable-model-invocation: true` and confirm before any destructive git action.
