# Dotfiles

Personal shell, Git, Vim, tmux, and CLI configuration managed with Dotbot.
`install.conf.yaml` links tracked files into `$HOME`; edits therefore affect
the live environment immediately.

## Repository Map

- `install` and `install.conf.yaml`: Dotbot bootstrap and link definitions.
- `zshenv`, `zshrc`, `zlogin`: zsh startup entry points.
- `zsh/env/`: environment setup loaded by every zsh invocation.
- `zsh/*.zsh`: interactive configuration loaded by `zshrc` after Zim.
- `mise/config.toml`: global CLI tool inventory.
- `dotbot/`: pinned upstream submodule.

## Workflow

- Do not run `./install` merely to validate a change. It mutates `$HOME`, updates
  submodules, downloads tools, and may access the network.
- Test shell changes in a child zsh process; do not source them into the current
  agent shell.

## Conventions

- Keep setup needed by agents in `zshenv` or `zsh/env/` as they are using non-interactive shells.
- Keep setup needed by humans in `zshrc` or `zsh/*.zsh`.
- Environment fragments load lexically. Use numeric, dash-separated names: `00-mise.zsh`, `10-example-path.zsh`.
- Mise owns global CLI tools. Tools are listed in `mise/config.toml`.
- Bootstrap-only dependencies belong in `install.conf.yaml`. Do not add separate installers for tools that mise can manage.

## Validation

- Run the checks relevant to the files changed.

## Git

- Use Conventional Commit subjects matching repository history:
  `feat: ...`, `fix: ...`, `chore: ...`, or `docs: ...`.
