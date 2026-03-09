---
description: Find and remove dead code, unused imports, and console.logs
allowed-tools: Read, Glob, Grep, Edit
---

Scan the codebase for:
1. Unused imports
2. Dead code (unreachable or never called functions/variables)
3. Leftover `console.log`, `print`, `debugger` statements
4. TODO comments older than the current sprint

List everything found, then ask before removing anything.
