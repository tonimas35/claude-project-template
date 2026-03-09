# Claude Project Bootstrapper

Clone this repo into any new project folder and Claude Code will automatically guide you through setup.

## Usage

```bash
git clone <this-repo-url> my-new-project
cd my-new-project
claude
```

That's it. Claude will ask you:
1. What do you want to build?
2. What's the stack?
3. Project name?
4. Git?

Then it sets everything up for you.

## How it works

- `CLAUDE.md` — contains the setup wizard instructions Claude reads on first run
- `.claude/hooks/session-start.sh` — fires on `SessionStart`, tells Claude to run the wizard if `.initialized` doesn't exist
- `.initialized` — created after setup so the wizard never runs again
- `.claude/commands/` — pre-installed slash commands (`/review`, `/standup`, `/cleanup`)
