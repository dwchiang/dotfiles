# Ernest Chiang's dotfiles

**Before doing anything, make sure you know what are you doing! **

**Before doing anything, make sure you know what are you doing! **

**Before doing anything, make sure you know what are you doing! **

Settings applied by this repository are very personal and definitely not for everyone. I suggest to create your own set of dotfiles based on this repo.

## How to Use?

If you are **NOT** Ernest Chiang, please fork it before doing anything, then modify it, then use it.

If you are Ernest Chiang, please follow it step by step.

## Prerequisites

1. Make sure the macOS software is up to date:

```
sudo softwareupdate -i -a --restart
```

2. Install Apple Xcode Command Line Tools:

```
xcode-select --install
```

## Quick Start

1. Install brew and brew install:

It may require enter user password couple times in this step.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dwchiang/dotfiles/master/scripts/setup-brew.sh)" 
```

2. Setup SSH.

Setup SSH and place personal keys at a right place for git clone on next step.

3. Clone this repo:

Clone it for future easier maintainance.

```
git clone git@github.com:dwchiang/dotfiles.git ~/.dotfiles
```

4. Init & Setup macOS:

Init by installing [Oh My Zsh](https://ohmyz.sh/), and setup macOS defaults.

```
source ~/.dotfiles/scripts/init-macos.sh
source ~/.dotfiles/scripts/setup-macos.sh
```

5. Setup symlinks:

Create symlinks for dotfiles (e.g. `.zshrc`, `.gitconfig`, etc).

Edit your own `.gitconfig.local` which can be duplicated from `.gitconfig.local.example`.

```
source ~/.dotfiles/scripts/setup-symlinks.sh
```

6. Setup VSCode:

```
source ~/.dotfiles/scripts/setup-vscode.sh
```

## Reference

- pawelgrzybek's dotfiles (https://github.com/pawelgrzybek/dotfiles)
  - [Change macOS user preferences via command line](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)
- Mathias’s dotfiles (https://github.com/mathiasbynens/dotfiles)
- [holman does dotfiles](https://github.com/holman/dotfiles)
- [Paul Irish](https://www.paulirish.com/)'s dotfiles (https://github.com/paulirish/dotfiles)
- (中文) Amo Wu's dotfiles (https://github.com/amowu/dotfiles) 
- [zero.sh](https://github.com/zero-sh/zero.sh): Radically simple personal bootstrapping tool for macOS.
  - [apply-user-defaults](https://github.com/zero-sh/apply-user-defaults) is a small utility to set macOS user defaults declaratively from a YAML file.
- [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle)