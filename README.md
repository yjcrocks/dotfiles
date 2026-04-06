# Dotfiles

This repository has been migrated to `chezmoi` for configuration management and `mise` for tool installation.

## Bootstrap

Run:

```bash
./install
```

This installs `chezmoi` and `mise`, then applies the repository as the chezmoi source.

## Managed files

The repository now stores dotfiles in chezmoi source format:
- `dot_zshrc` -> `~/.zshrc`
- `dot_zshenv` -> `~/.zshenv`
- `dot_gitconfig` -> `~/.gitconfig`
- `dot_config/mise/config.toml` -> `~/.config/mise/config.toml`

## Tool configuration

`mise` is configured to install and manage:
- `eza`
- `ripgrep`
- `bat`
- `zoxide`
- `uv`
- `python`
- `aichat`

Python CLI installs are configured to use `uvx` under the hood and auto-source `uv` virtual environments.
