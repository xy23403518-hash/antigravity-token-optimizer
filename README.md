# Antigravity Token Optimizer Skill / Antigravity Token 优化技能

[English](#english) | [中文](#中文)

---

## English

A sophisticated Model Context Protocol (MCP) skill for Antigravity (and Claude Code) designed to solve the "context window overflow" problem and minimize API token costs.

### 🚀 Key Features

- **VFS (Virtual Function Signatures)**: Scan massive codebases with 90% fewer tokens.
- **Tiered Context**: "Hub and Spoke" documentation model for efficient project mapping.
- **OS-Specific Optimizations**: Tailored tools for Windows, WSL, and MacOS.
- **Local Tool Offloading**: Automatically run formatters/linters locally instead of consuming AI tokens for manual fixes.
- **Strict Efficiency Policies**: Enforced behavioral patterns for VFS usage and context compaction.

### 📦 Installation

To use this skill in your Antigravity environment:

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/xy23403518-hash/antigravity-token-optimizer.git
    ```

2. Install the skill to your Antigravity skills directory (usually `~/.gemini/antigravity/skills`):
    ```bash
    # For Windows
    xcopy /E /I /Y ./antigravity-token-optimizer C:\Users\YOUR_USER\.gemini\antigravity\skills\antigravity-token-optimizer\
    ```

    ```bash
    # For Linux/WSL/Mac
    cp -r ./antigravity-token-optimizer ~/.gemini/antigravity/skills/
    ```

### 🛠 Prerequisites

The skill will guide you through installing these, but for the best experience, ensure you have:

- `fd` (or `fd-find`)
- `ruff` (linter/formatter)
- `wslpath` (if using WSL)
- `mdfind` (on MacOS)

---

## 中文

一个为 Antigravity（以及 Claude Code）打造的高级 Model Context Protocol (MCP) 技能，旨在解决“上下文窗口溢出”问题并最大限度地降低 API Token 成本。

### 🚀 核心功能

- **VFS (虚拟函数签名)**：以减少 90% Token 消耗的代价扫描大规模代码库。
- **分层上下文管理**：采用“中心辐射型”文档模型，实现高效的项目映射。
- **操作系统特定优化**：针对 Windows、WSL 和 MacOS 定制的优化工具。
- **本地工具卸载**：自动在本地运行格式化和代码检查工具，避免浪费 AI Token 进行手动修复。
- **严格的效率策略**：强制执行 VFS 使用和上下文压缩的行为模式。

### 📦 安装指南

在您的 Antigravity 环境中使用此技能：

1. 克隆此仓库到您的本地机器：
    ```bash
    git clone https://github.com/xy23403518-hash/antigravity-token-optimizer.git
    ```

2. 将技能安装到您的 Antigravity 技能目录（通常为 `~/.gemini/antigravity/skills`）：
    ```bash
    # Windows 用户
    xcopy /E /I /Y ./antigravity-token-optimizer C:\Users\您的用户名\.gemini\antigravity\skills\antigravity-token-optimizer\
    ```

    ```bash
    # Linux/WSL/Mac 用户
    cp -r ./antigravity-token-optimizer ~/.gemini/antigravity/skills/
    ```

### 🛠 环境要求

此技能会引导您安装以下工具，但为了获得最佳体验，请确保已安装：

- `fd` (或 `fd-find`)
- `ruff` (代码检查/格式化工具)
- `wslpath` (如果您正在使用 WSL)
- `mdfind` (MacOS 用户)

---

## 📄 License / 许可证

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
本项目采用 MIT 许可证 - 详情请参阅 [LICENSE](LICENSE) 文件。
