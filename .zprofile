# Amazon Q pre block. Keep at the top of this file.
# Only load Amazon Q in non-Cursor environments
if [[ "$TERM_PROGRAM" != "cursor" ]] && [[ -z "$CURSOR_SESSION" ]]; then
    [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
fi

# Homebrew
if [ "$(uname -m)" = "x86_64" ]; then
  export PATH="/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/usr/local"
elif [ "$(uname -m)" = "arm64" ]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/opt/homebrew"
else
  export PATH="/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/usr/local"
fi
export PATH="${PATH}:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="${PATH}:${HOME}/.composer/vendor/bin"

# Android
export PATH="${PATH}:${HOME}/Library/Android/sdk/tools"
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export NDK="${HOME}/Development/ndk/android-ndk-r19c"
export PATH="${PATH}:${HOME}/Development/ndk/android-ndk-r19c"

# Dart (pub)
export PATH="${PATH}:${HOME}/.pub-cache/bin"

# Flutter
export PATH="${PATH}:${HOME}/Development/flutter/flutter_v1.12.13+hotfix.5-stable/bin"
export PATH="${PATH}:${HOME}/Library/flutter/bin"

# GCC
export PATH="${PATH}:${HOME}/Development/gcc/gcc-arm-none-eabi-7-2018-q2-update/bin"

# Go
export PATH="${PATH}:${BREWPATH}/opt/go/libexec/bin"

# Nordic nRF CLI
export PATH="${PATH}:${HOME}/Development/nRF_CLI/nRF-Command-Line-Tools_9_8_1_OSX/nrfjprog"

# Python
export PATH="${PATH}:$(pyenv root)/shims"

# Ruby
export PATH="${PATH}:${BREWPATH}/opt/ruby/bin"

# Rust
export PATH="${PATH}:${HOME}/.cargo/bin"

# Visual Studio Code (code)
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# yarn
export PATH="${PATH}:${HOME}/.yarn/bin:${HOME}/.config/yarn/global/node_modules/.bin"

# pnpm
export PNPM_HOME="${HOME}/Library/pnpm"
export PATH="${PATH}:${PNPM_HOME}"

# TeX
export PATH="${PATH}:/usr/local/texlive/2024basic/bin/universal-darwin"
export PATH="${PATH}:/Library/TeX/texbin"

# jEnv
export PATH="${PATH}:${HOME}/.jenv/bin"
export JENV_ROOT="$HOME/.jenv"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"

# pnpm (again, for safety)
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Language and editor
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# Homebrew shellenv (keep as is)
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Orbstack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Amazon Q post block. Keep at the bottom of this file.
# Only load Amazon Q in non-Cursor environments
if [[ "$TERM_PROGRAM" != "cursor" ]] && [[ -z "$CURSOR_SESSION" ]]; then
    [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
fi
