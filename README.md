# dotfiles

Before doing anything, make sure you know what are you doing! Settings applied by this repository are very personal and definitely not for everyone. I suggest to create your own set of dotfiles based on this repo.

## Prerequisites

Make sure the macOS software is up to date:

```
sudo softwareupdate -i -a --restart
```

Install Apple XCode command line tools:

```
xcode-select --install
```

## Usage

1. Install brew and brew install:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dwchiang/dotfiles/master/setup-brew.sh)" 
```

2. Setup SSH.
3. Clone this repo:

```
git clone git@github.com:dwchiang/dotfiles.git ~/.dotfiles
```

4. Setup macOS:

```
source ~/.dotfiles/setup-macos.sh
```

5. Setup symlinks:

```
source ~/.dotfiles/setup-symlinks.sh
```

6. Setup VSCode:

```
source ~/.dotfiles/setup-vscode.sh
```

## Reference

- pawelgrzybek's dotfiles (https://github.com/pawelgrzybek/dotfiles)
  - [Change macOS user preferences via command line](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)
- Mathias’s dotfiles (https://github.com/mathiasbynens/dotfiles)
- [Paul Irish](https://www.paulirish.com/)'s dotfiles (https://github.com/paulirish/dotfiles)