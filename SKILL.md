---
name: antigravity-token-optimizer
description: Optimizes Token usage through VFS, pruning, and efficient patterns. (优化 Antigravity 的 Token 消耗，集成 VFS、上下文剪枝及高效编程模式)
---

# Antigravity Token Optimizer

This skill provides a systematic approach to reducing Token consumption and improving the efficiency of Antigravity.

## Core Optimization Pillars

### 1. Configuration-Level Pruning

Exclude irrelevant directories to prevent the AI from scanning unnecessary files.

- **Action**: Use the provided template to create or update `.antigravityignore`.
- **Reference**: [resources/.antigravityignore.template](file:///C:/Users/user/.gemini/antigravity/skills/antigravity-token-optimizer/resources/.antigravityignore.template)

### 2. Plugin-Based Context Management

Use the DCP (Dynamic Context Pruning) plugin to automatically handle conversational history.

- **Activation**: Ensure `@tarquinen/opencode-dcp` is in your plugin list.
- **Commands**:
  - `/dcp context`: Check current Token usage.
  - `/dcp compress`: Manually trigger compression.
  - `/dcp sweep`: Prune recent tool outputs.

### 3. Data Format Optimization

Use **TOON (Token-Oriented Object Notation)** instead of JSON for large structured data.

- **Benefit**: Reduces Token count by up to 50% by using indentation instead of braces/quotes.

### 4. Efficient Scripting Patterns

Refactor long-running scripts (like crawlers or parsers) to be efficient and resumable.

- **断点续传 (Resumable Operations)**: Always check for existing output before starting a heavy LLM task.
- **Smart Range Extraction**: For PDF/Text processing, search for keywords and only read relevant sections.
- **Reference Script**: [scripts/refactor_resumable.py](file:///C:/Users/user/.gemini/antigravity/skills/antigravity-token-optimizer/scripts/refactor_resumable.py)

### 1. Advanced Token Optimization Techniques

- **VFS (Virtual Function Signatures)**: Use the `vfs` tool to scan code structure without reading full files.
- **Guidance**: Use `vfs` on large directories before `view_file`.
- **Impact**: Reduces token overhead by ~70-90% for discovery tasks.

#### 2. Tiered Context Management (CLAUDE.md)

- **Context Hub**: Instead of one massive `CLAUDE.md`, use a "Hub and Spoke" documentation model.
- **Structure**: Use `CLAUDE.md` for high-level rules and links to component-specific `.md` files in subdirectories.
- **Benefit**: Antigravity only loads deep context when entering specific component paths.

### 4. OS-Specific Specialized Optimizations (WSL/Windows)

- **Windows/WSL Detection**: Before running heavy commands, identify the shell/OS:

- **Windows**: `$PSVersionTable` or `cmd /c ver`
- **WSL**: `grep -i microsoft /proc/version`
- **MacOS**: `uname -a`

#### System Specific Tips

- **Windows / WSL**:
  - Use `wslpath` to auto-translate paths when switching between Windows and WSL mounts.
  - In WSL, use `grep/sed` pipelines to filter large logs before they reach the AI.
- **MacOS**:
  - Use `mdfind` (Spotlight) for instant, token-efficient file searching.
  - Use `pbpaste` to inject clipboard content instead of reading whole files for snippets.

### 3. Local Tool Offloading

- **Format/Lint**: Use `run_command` with `prettier`, `eslint`, or `ruff`.
- **Lint/Format**: Run `prettier --write`, `ruff check --fix`, or `eslint --fix`.
- **Build**: Run local build checks instead of asking the AI to "simulate" a build.

### 8. Environment Readiness & Setup

In a new environment, always perform a dependency check:

- **Core Utilities**: Check for `fd` (modern find), `ruff` (fast linter/formatter), and `jq` (JSON processor).
- **Environment Tools**:
  - **WSL**: Ensure `wslpath` is available.
  - **MacOS**: Ensure `mdfind` and `pbcopy/pbpaste` are accessible.
- **Antigravity Plugins**: List active plugins using internally available tools to confirm DCP or TOON status.

### 9. Safety & Fallbacks (Cross-OS Robustness)

1. **Existence Guard**: Before running a local tool via `run_command` (e.g., `ruff`, `prettier`), always verify its availability using `which <tool>` (Unix/WSL/Mac) or `where.exe <tool>` (Windows).
2. **Path Validation**: After using `wslpath` or manual translation, verify the path's existence with `ls` or `dir` before performing any write operations.
3. **VFS Fallback**: If the `vfs` tool fails or returns empty for a valid directory, fall back to a shallow `list_dir` (max depth 1) to build context manually.
4. **Graceful Degression**: If a specialized tool (`mdfind`, `pbpaste`) fails due to OS permissions or missing environment variables, revert to standard Antigravity tools immediately without spending tokens on debugging the environment unless explicitly asked.

## Workflow

1. **Initialize**: Check for prerequisites and suggest installation if missing.
2. **Detect**: Identify OS/Shell environment.
3. **Guard**: Validate tool availability for the specific OS.
4. **Audit**: Analyze current Token usage.
5. **Configure**: Deploy `.antigravityignore` and tiered `CLAUDE.md`.
6. **Refactor**: Apply VFS and Local Tooling patterns with safety checks.
7. **Compact**: Run `/compact` proactively at 75% context.
