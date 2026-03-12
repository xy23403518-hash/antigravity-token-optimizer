---
name: antigravity-token-optimizer
description: Universal Token Optimization Skill for AI-assisted coding (Claude Code, Cursor, Codex, Antigravity). Minimizes costs through VFS and efficient context management.
---

# Hybrid Token Optimizer (Antigravity & Claude Code)

This skill provides a systematic approach to reducing Token consumption for both Antigravity and Claude Code CLI across Windows, macOS, and Linux.

## Core Optimization Pillars

### 1. Configuration-Level Pruning

Exclude irrelevant directories to prevent the AI from scanning unnecessary files.

- **Antigravity**: Use `.antigravityignore`.
  - [Template](file:///e:/Temp/Map2D/Temp/Antigravity/AntiTokenSkill/antigravity-token-optimizer/resources/.antigravityignore.template)
- **Claude Code**: Use `.claudeignore`.
  - [Template](file:///e:/Temp/Map2D/Temp/Antigravity/AntiTokenSkill/antigravity-token-optimizer/resources/.claudeignore.template)

### 2. Session & Context Management

#### Antigravity (DCP)

- Ensure `@tarquinen/opencode-dcp` is active.
- `/dcp context`, `/dcp compress`, `/dcp sweep`.

#### Claude Code (Built-in)

- **`/clear`**: Start a new chat to reset context once a task is done.
- **`/compact`**: Summarize history to save tokens while keeping context.
- **`/cost`**: Monitor session API usage and burn rate.

### 3. Global Settings Optimization

Optimize default models to balance capability and cost.

| OS | Claude Code Settings Path |
| :--- | :--- |
| **Windows** | `%USERPROFILE%\.claude\settings.json` |
| **macOS** | `~/.claude/settings.json` |
| **Linux** | `~/.claude/settings.json` |

- **Strategy**: Set `ANTHROPIC_MODEL` to a Sonnet-equivalent (e.g., `qwen3.5-plus` or `claude-3-7-sonnet`) instead of Opus for daily tasks.

### 4. Tiered Context (CLAUDE.md)

- **Context Hub**: Use `CLAUDE.md` for high-level rules.
- **Lazy Loading**: Refer to specific files instead of including all details in `CLAUDE.md`.

### 5. OS-Specific Specialized Optimizations

- **Windows**: Use `Get-ChildItem -Path "$env:USERPROFILE\.claude" -File` for config discovery.
- **macOS/Linux**: Use `ls -a ~/.claude/` and `grep` for efficient local filtering.

## Workflow

1. **Detect**: Identify OS and tool versions (Claude Code/Antigravity).
2. **Audit**: Run `/cost` (Claude) or `/dcp context` (Antigravity).
3. **Configure**: Deploy `.claudeignore` or `.antigravityignore`.
4. **Optimize**: Update `settings.json` default models.
5. **Guidance**: Use `CLAUDE.md` to define project boundaries.
