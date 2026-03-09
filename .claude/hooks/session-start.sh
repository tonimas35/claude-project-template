#!/bin/bash
# SessionStart hook — fires when Claude Code session begins.
# If the project is not yet initialized, injects a prompt that triggers the setup wizard.

INITIALIZED_FILE=".initialized"

if [ ! -f "$INITIALIZED_FILE" ]; then
  # Output JSON to inject a system message that Claude will read
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "SessionStart",
      additionalContext: "IMPORTANT: This is a fresh project clone. You must immediately start the project setup wizard as described in CLAUDE.md. Ask the user what they want to build. Do not wait for any other instruction."
    }
  }'
fi

exit 0
