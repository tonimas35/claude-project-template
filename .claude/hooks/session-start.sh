#!/bin/bash
# SessionStart hook — fires when Claude Code session begins.

GH_BIN="/c/Program Files/GitHub CLI/gh.exe"

# Check gh auth and export token for MCP
if command -v gh &>/dev/null; then
  export GH_TOKEN=$(gh auth token 2>/dev/null)
elif [ -f "$GH_BIN" ]; then
  export GH_TOKEN=$("$GH_BIN" auth token 2>/dev/null)
fi

# If not authenticated, warn
if [ -z "$GH_TOKEN" ]; then
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "SessionStart",
      additionalContext: "WARNING: GitHub CLI is not authenticated. Run `gh auth login` to enable GitHub integration (create repos, PRs, etc.)."
    }
  }'
  exit 0
fi

# If fresh clone (no .initialized), trigger setup wizard
if [ ! -f ".initialized" ]; then
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "SessionStart",
      additionalContext: "IMPORTANT: This is a fresh project clone. GitHub is authenticated. You must immediately start the project setup wizard as described in CLAUDE.md. Ask the user what they want to build."
    }
  }'
fi

exit 0
