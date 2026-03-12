#!/bin/bash

# offload_linting.sh
# Purpose: Demonstrate how to save tokens by running local formatting/linting
# Usage: ./offload_linting.sh <file_path>

FILE_PATH=$1

if [ -z "$FILE_PATH" ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

echo "--- Starting Local Optimization for $FILE_PATH ---"

# 1. Detect environment
OS_TYPE=$(uname)
echo "[1/3] Detecting OS: $OS_TYPE"

# 2. Run Formatter (Example: Prettier or Ruff)
if command -v prettier &> /dev/null; then
    echo "[2/3] Running Prettier..."
    prettier --write "$FILE_PATH"
elif command -v ruff &> /dev/null; then
    echo "[2/3] Running Ruff formatter..."
    ruff format "$FILE_PATH"
else
    echo "[2/3] No local formatter found. Skipping."
fi

# 3. Run Linter
if command -v eslint &> /dev/null; then
    echo "[3/3] Running ESLint fix..."
    eslint --fix "$FILE_PATH"
elif command -v ruff &> /dev/null; then
    echo "[3/3] Running Ruff check fix..."
    ruff check --fix "$FILE_PATH"
else
    echo "[3/3] No local linter found. Skipping."
fi

echo "--- Optimization Complete. AI can now view the cleaned file. ---"
