# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Ernest Chiang's personal dotfiles for macOS development environment setup. Manages shell configuration, package installation, and application settings synchronization through symlinks from `~/.dotfiles/` to home directory.

## Setup Commands

Run scripts in this order for a new machine:

```bash
source ~/.dotfiles/scripts/init-macos.sh      # Bootstrap Oh My Zsh, create ~/.nvm
source ~/.dotfiles/scripts/setup-macos.sh     # Apply macOS system defaults
source ~/.dotfiles/scripts/setup-symlinks.sh  # Create dotfile symlinks to ~
source ~/.dotfiles/scripts/setup-brew.sh      # Install Homebrew packages
source ~/.dotfiles/scripts/setup-zsh.sh       # Install Powerlevel10k theme
source ~/.dotfiles/scripts/setup-python.sh    # Setup pyenv
```

## Architecture

### Shell Configuration Split
- **`.zprofile`**: Login shell - PATH setup, environment variables, version manager initialization (jenv, pyenv, nvm)
- **`.zshrc`**: Interactive shell - Oh My Zsh, plugins (git, autojump), Powerlevel10k theme, functions, aliases

### Multi-Architecture Support
- Detects Intel (`x86_64`) vs Apple Silicon (`arm64`) at runtime
- Different Homebrew paths: `/usr/local` (Intel) vs `/opt/homebrew` (Apple Silicon)

### Symlink Management
`scripts/setup-symlinks.sh` links these files from `~/.dotfiles/` to `~`:
- Shell: `.zshrc`, `.zprofile`, `.aliases`, `.aliases.local`, `.p10k.zsh`
- Git: `.gitconfig`, `.gitconfig.local`, `.gitignore_global`, `.git-commit-template`
- Vim: `.vimrc` + Vundle plugins
- Mackup: `.mackup.cfg`

### Script Utilities
`scripts/lib.sh` provides colored output functions used by other scripts:
- `info()`, `user()`, `success()`, `fail()`

## Key Configuration Notes

### Requires Manual Editing
- `scripts/setup-macos.sh` line 28-31: Set computer name before running
- `.gitconfig.local`: Personal git name/email (use `.gitconfig.local.example` as template)
- `.aliases.local`: Personal aliases (use `.aliases.local.example` as template)

### Git Configuration
- GPG commit signing enabled by default
- Signing key: `497E3F5132703CDB749908C8C9CEFB07A1878177`
- Default branch: `main`
- Includes: `.gitconfig.local` for sensitive/personal config

### Version Managers
- **pyenv**: Python versions
- **jenv**: Java versions
- **nvm**: Node.js versions (loaded async via zsh-async for faster shell startup)

### Application Sync
`.mackup.cfg` syncs 20+ app configurations via Dropbox, including VS Code, Sublime Text, AWS, Docker, SSH.
