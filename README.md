# claude-config

My Claude Code setup, packaged as a plugin marketplace so the same rules and
skills apply in the terminal and in cloud sessions on claude.ai/code.

Cloud sessions never read `~/.claude`, so user-level config stays on the
machine it was written on. A plugin is the one form of config both scopes can
install from a single source.

## What the catalog lists

Three entries.

- `anstapol-config`, the only one whose content lives here. My working rules
  and the unslop prose skill, injected by a `SessionStart` hook, plus vendored
  copies of the third-party skills I use. See
  `plugins/anstapol-config/THIRD_PARTY_NOTICES.md` for where each came from
- `caveman` and `context-mode`, referenced from their upstream repos. Both run
  code at session start, and the claude.ai plugin importer skips them, so they
  reach terminal sessions only

The third-party skills are copied in rather than referenced because the
claude.ai importer only accepts plugins whose content lives in the marketplace
repo itself. To refresh them:

```sh
scripts/vendor.sh   # pulls latest, prints the diff
git diff            # review
git commit          # keep what you want
```

## Use it in the terminal

Declared in [anstapol/dotfiles](https://github.com/anstapol/dotfiles) under
`home/.claude/settings.json`, so a fresh machine installs everything on first
run. By hand:

```
/plugin marketplace add anstapol/claude-config
/plugin install anstapol-config@anstapol
```

## Use it on claude.ai

Settings > Plugins > Add, point it at `anstapol/claude-config`, enable
`anstapol-config`. That syncs to cloud sessions and to terminal sessions signed
in to the same account. One-time.

The repo is public because the cloud VM and the claude.ai importer both fetch
it with no credentials of mine.
