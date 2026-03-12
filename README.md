# Antigravity Token Optimizer Skill

A sophisticated Model Context Protocol (MCP) skill for Antigravity (and Claude Code) designed to solve the "context window overflow" problem and minimize API token costs.

## 🚀 Key Features

- **VFS (Virtual Function Signatures)**: Scan massive codebases with 90% fewer tokens.
- **Tiered Context**: "Hub and Spoke" documentation model for efficient project mapping.
- **OS-Specific Optimizations**: Tailored tools for Windows, WSL, and MacOS.
- **Local Tool Offloading**: Automatically run formatters/linters locally instead of consuming AI tokens for manual fixes.
- **Strict Efficiency Policies**: Enforced behavioral patterns for VFS usage and context compaction.

## 📦 Installation

To use this skill in your Antigravity environment:

1.  Clone this repository to your local machine:
    ```bash
    git clone https://github.com/YOUR_USERNAME/antigravity-token-optimizer.git
    ```
2.  Install the skill to your Antigravity skills directory (usually `~/.gemini/antigravity/skills`):
    ```bash
    # For Windows
    xcopy /E /I /Y ./antigravity-token-optimizer C:\Users\YOUR_USER\.gemini\antigravity\skills\antigravity-token-optimizer\
    
    # For Linux/WSL/Mac
    cp -r ./antigravity-token-optimizer ~/.gemini/antigravity/skills/
    ```

## 🛠 Prerequisites

The skill will guide you through installing these, but for the best experience, ensure you have:
- `fd` (or `fd-find`)
- `ruff` (linter/formatter)
- `wslpath` (if using WSL)
- `mdfind` (on MacOS)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
