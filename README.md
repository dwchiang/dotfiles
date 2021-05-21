# Ernest Chiang's dotfiles

**Before doing anything, make sure you know what are you doing!**

**Before doing anything, make sure you know what are you doing!**

**Before doing anything, make sure you know what are you doing!**

Settings applied by this repository are very personal and definitely not for everyone. I suggest to create your own set of dotfiles based on this repo.

## How to Use?

If you are **NOT** Ernest Chiang, please fork it before doing anything, then modify it, then use it.

If you are Ernest Chiang, please follow it step by step.

----

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

- It may require enter user password couple times in this step.
- It may spend coupld hours to install all the softwares.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dwchiang/dotfiles/master/scripts/setup-brew.sh)" 
```

- Now, we can run **iTerm2**.

2. Setup SSH.

Setup SSH and place personal keys at a right place for _git clone_ on next step.

- Have a copy of `~/.ssh`
- Make sure `~/.ssh/config` points the ssh key file to be able to access GitHub. Test method: `ssh -vT git@github.com`

3. Clone this repo:

Clone it for future easier maintainance.

```
git clone git@github.com:dwchiang/dotfiles.git ~/.dotfiles
```

4. Init & Setup macOS:

Init by installing [Oh My Zsh](https://ohmyz.sh/), and setup macOS defaults.

Please remember to change the `computer name` in `./scripts/setup-macos.sh`.

```
source ~/.dotfiles/scripts/init-macos.sh
source ~/.dotfiles/scripts/setup-macos.sh
```

5. Setup symlinks:

Create symlinks for dotfiles (e.g. `.zshrc`, `.gitconfig`, etc).

- Edit your own `.gitconfig.local` which can be duplicated from `.gitconfig.local.example`.
- Edit your own `.aliases.local` which can be duplicated from `.aliases.local.example`.

```
source ~/.dotfiles/scripts/setup-symlinks.sh
```

----

## First Run & Setup

### Dropbox

- After setting computer name.

### keepass

### Backup files between two Mac using scp

System Preferences pane → Sharing applet → check the **Remote Login** checkbox. This will enable SSH, and in turn, SCP.

```
❯ scp -r ~/Pictures/Desktop\ Pictures  dwchiang@10.0.0.115:"~/Pictures"
```

### Visual Studio Code

- [Turning on Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync)

### Alfrad

- `Advanced` > `Set preferences folder...` (path = //(storage)/Sync/Alfrad)

### iTerm 2

- Set `Preferences` > `General` > `Preferences` > `Load preferences from a custom folder or URL`.

### projects folder

```
❯ ln -is /Users/dwchiang/Dropbox/projects ~/projects
```

### GPG Keychain

- Before using git commit.
- Run **GPG Keychain** and import key(s) into GPG Keychain.

### Multiple Python Versions

- Using `pyenv`.
- Ref: [The right and wrong way to set Python 3 as default on a Mac](https://opensource.com/article/19/5/python-3-default-mac)

```
source ~/.dotfiles/scripts/setup-python.sh
```

### Multiple Node.js Versions

- [nvm](https://github.com/nvm-sh/nvm) is a version manager for node.js, designed to be installed per-user, and invoked per-shell. nvm works on any POSIX-compliant shell (sh, dash, ksh, zsh, bash), in particular on these platforms: unix, macOS, and windows WSL.

Install latest node.js version:

```
# Install latest version
nvm install node

# Install latest LTS version
nvm install --lts
```

### Multiple JAVA Versions

- [How to Manage Multiple Java Versions in MacOS](https://medium.com/@chamikakasun/how-to-manage-multiple-java-version-in-macos-e5421345f6d0)
- [Working with multiple Java versions in MacOS](https://medium.com/@brunofrascino/working-with-multiple-java-versions-in-macos-9a9c4f15615a)

```
# jEnv Configurations
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# ensure that JAVA_HOME is correct
jenv enable-plugin export
# make Maven aware of the Java version in use (and switch when your project does)
jenv enable-plugin maven
```

Find your JDK versions and locations:

```
/usr/libexec/java_home -V
```

Add the library you want:

```
jenv add <jdk_path>

# For example:
# jenv add /Library/Java/JavaVirtualMachines/openjdk-14.0.2.jdk/Contents/Home
# openjdk64-14.0.2 added
# 14.0.2 added
# 14.0 added
# 14 added

jenv versions

jenv <scope> <jdk-version>

# For example:
# jenv global 14.0
# jenv local 14.0

java -version
```

### Android

- Android Studio (installed by homebrew)
- Android SDK Location: `~/Library/Android/sdk`

### Flutter

- Flutter SDK Location: `~/Library/flutter`

### (My Notes)

- `ln -is /Users/___userNameHere___/Dropbox/Apps/Byword/notes ~/notes`

----

## Daily Usage

### Mackup

- [Mackup](https://github.com/lra/mackup) project and [doc](https://github.com/lra/mackup/tree/master/doc).
- Edit `.mackup.cfg` to fit your backup settings and scope.

```
# Launch it and back up your files
mackup backup
```

```
# Launch it and restore your files
mackup restore
```

----

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