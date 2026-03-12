# VFS Usage Guide for Antigravity

VFS (Virtual Function Signatures) is a built-in tool in Antigravity that allows for token-efficient code analysis.

## Why use VFS?
Reading a 1000-line file just to understand its structure costs ~5k-10k tokens. VFS parses the file and returns only the signatures (class names, function names, parameters), typically reducing the cost to <200 tokens.

## How to use it
Instruct the AI to use the `vfs` command (if available as a tool) or simulate it using the following logic:

### Pattern 1: Directory Exploration
Instead of `list_dir` followed by multiple `view_file` calls, use:
`vfs <directory_path>`

### Pattern 2: Deep Analysis
When looking for a specific logic but unsure which file it resides in:
1. Run `vfs` on the module.
2. Identify the specific function signature.
3. Call `view_file` with `StartLine` and `EndLine` targeting ONLY that function.

## Integration
In your `CLAUDE.md` or `ANTIGRAVITY.md`, add:
> "Prioritize using `vfs` for code discovery and mapping before reading full file contents."
