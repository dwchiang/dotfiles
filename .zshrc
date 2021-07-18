# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# My Shell Lib
DOTFILES_ROOT=~/.dotfiles
source $DOTFILES_ROOT/scripts/lib.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export HOMEBREW_NO_ANALYTICS=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# https://github.com/romkatv/powerlevel10k
# ZLE_RPROMPT_INDENT=6
# To customize prompt, run `p10k configure` or edit ~/.dotfiles/.p10k.zsh.
[[ ! -f $DOTFILES_ROOT/.p10k.zsh ]] || source $DOTFILES_ROOT/.p10k.zsh

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  autojump
)

source $ZSH/oh-my-zsh.sh


####################################################################
# arch
####################################################################
# https://cutecoder.org/software/detecting-apple-silicon-shell-script/

arch_name="$(uname -m)"
 
if [ "${arch_name}" = "x86_64" ]; then
    if [ "$(sysctl -in sysctl.proc_translated)" = "1" ]; then
        echo "Running on Rosetta 2"
    else
        echo "Running on native Intel"
    fi 
elif [ "${arch_name}" = "arm64" ]; then
    echo "Running on ARM"
else
    echo "Unknown architecture: ${arch_name}"
fi

####################################################################
# User configuration
####################################################################

# General path
# https://superuser.com/a/533708
# https://github.com/Homebrew/brew/issues/7857
if [ "${arch_name}" = "x86_64" ]; then
  export PATH="/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/usr/local"
elif [ "${arch_name}" = "arm64" ]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/opt/homebrew"
else
  export PATH="/usr/local/bin:/usr/local/sbin"
  export BREWPATH="/usr/local"
fi

export PATH="${PATH}:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="${PATH}:/usr/local/opt/ab/bin"
#export PATH="${PATH}:/usr/local/sbin"
export PATH="${PATH}:${HOME}/.composer/vendor/bin"

# Android
export PATH="${PATH}:${HOME}/Library/Android/sdk/tools"
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export NDK="${HOME}/Development/ndk/android-ndk-r19c"

# Android NDK
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

# for autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

####################################################################
# Aliases
####################################################################
source ~/.aliases
source ~/.aliases.local

####################################################################
# You may need to manually set your language environment
####################################################################
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

####################################################################
# Preferred editor for local and remote sessions
####################################################################
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

####################################################################
# nvm 
####################################################################
# Install zsh-async if it’s not present
if [[ ! -a ~/.zsh-async ]]; then
  git clone git@me.github.com:mafredri/zsh-async.git ~/.zsh-async
fi
source ~/.zsh-async/async.zsh

export NVM_DIR="$HOME/.nvm"

function load_nvm() {
    [ -s "${BREWPATH}/opt/nvm/nvm.sh" ] && . "${BREWPATH}/opt/nvm/nvm.sh"
    [ -s "${BREWPATH}/opt/nvm/etc/bash_completion" ] && . "${BREWPATH}/opt/nvm/etc/bash_completion"
}

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1

####################################################################
# jEnv
####################################################################
export PATH="${PATH}:${HOME}/.jenv/bin"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
# ensure that JAVA_HOME is correct
jenv enable-plugin export > /dev/null
# make Maven aware of the Java version in use (and switch when your project does)
jenv enable-plugin maven > /dev/null

####################################################################
# pyenv
####################################################################
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

####################################################################
# bash_completion
####################################################################
# 1. Install: brew install bash-completion
# 2. Scripts
# 	docker-compose: sudo curl -L https://raw.githubusercontent.com/docker/compose/1.22.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi
fpath=(/etc/zsh_completion $fpath)
autoload -Uz compinit && compinit -i

####################################################################
# GPG
####################################################################
export GPG_TTY=$(tty)

####################################################################
# functions
####################################################################
function curltime {
    # curl -o /dev/null -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n" "$1"
    curl -w "@script/tools/curl-format.txt" -so /dev/null "$1"
}

####################################################################
# Ernest's Headsup
####################################################################
echo "============================================================="
echo "AWS"
echo "  > export AWS_DEFAULT_PROFILE=xxx"
echo "  > export AWS_PAGER=\"\" (for AWS CLI v2)"
echo
echo "Rust"
echo "  > rustup docs --book"
echo "============================================================="
