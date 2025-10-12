echo "Building the Go program..."
echo "$(ls -ltr)"
echo "Running the program..."
#!/usr/bin/env bash
set -euo pipefail

# run.sh - replicate local build & run steps for this project (macOS)
# Uses bash to avoid zsh interactive compinit prompts. If you're running
# from zsh and see compinit warnings, run this script with: bash run.sh

# Temporarily point ZDOTDIR to a safe directory to avoid zsh compinit
# prompts when tooling spawns shells that source zsh config.
export ZDOTDIR=/tmp

echo "Working directory: $(pwd)"
echo
echo "Files in repo root:" 
ls -la

echo
echo "=> Running 'go mod tidy' to ensure module sums and requirements are up to date"
go mod tidy

echo
echo "=> Building main package (module root)"
# Build the main package at the repository root; using '.' ensures a single
# main binary is produced. Avoid using ./... with -o when multiple packages exist.
go build -o go-world .

echo
echo "=> Build artifact:"
ls -la go-world || true

echo
echo "=> Running the program (example invocation):"
./go-world -name="Conor Heffron"

echo
echo "Done."
