#!/bin/bash
# Runs after every Edit or Write tool call.
# Add auto-formatting here for your stack, e.g.:
#   npx prettier --write "$FILE" 2>/dev/null
#   black "$FILE" 2>/dev/null
#
# The edited file path is available in the JSON input via stdin:
#   FILE=$(echo "$CLAUDE_TOOL_INPUT" | jq -r '.path // empty')

exit 0
