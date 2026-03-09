#!/bin/bash
# Called by Claude at the end of the setup wizard to mark project as initialized.
# Usage: bash .claude/hooks/finalize-setup.sh

date +"%Y-%m-%d %H:%M:%S" > .initialized
echo "Project initialized on $(cat .initialized)"
