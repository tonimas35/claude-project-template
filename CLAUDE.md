# Project Bootstrapper

This is a project template. When cloned fresh, Claude Code will automatically guide the user through setting up a new project.

---

## INITIALIZATION PROTOCOL

**Check first:** Does a file called `.initialized` exist in this directory?

### If `.initialized` does NOT exist (fresh clone):

You must immediately start the setup wizard. Do not wait for any other instruction. Ask the user the following questions **one at a time**, waiting for each answer before continuing:

1. **"What do you want to build?"** — Get a clear description of the project.
2. **"What's the tech stack?"** — (e.g. Node/TypeScript, Python, React, etc.) If unsure, suggest one based on what they want to build.
3. **"What's the project name?"** — Use this to name directories/configs.
4. **"Do you want git initialized?"** — (yes/no)

Once you have all answers:
- Rewrite `CLAUDE.md` with the real project info (stack, key commands, conventions)
- Update `.claude/settings.json` permissions for the chosen stack
- Run any scaffold commands (e.g. `npm init`, `npx create-next-app`, etc.)
- Create a `.initialized` file with today's date so this wizard never runs again
- Tell the user: "Project is ready. What do you want to start with?"

### If `.initialized` EXISTS (project already set up):

Work normally. The project details are in this CLAUDE.md below.

---

## PROJECT DETAILS

> (This section gets filled in by the setup wizard after initialization)

### Stack
-

### Key Commands
- Install:
- Dev:
- Test:
- Build:

### Conventions
-

### Important Paths
-
