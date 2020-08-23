#!/usr/bin/env bash
#
# bootstrap installs things.
#
# Reference: https://github.com/amowu/dotfiles/blob/master/script/bootstrap
#

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

set -e

echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# Function: install_ohmyzsh()
#
install_ohmyzsh () {
  if [ ! -d ~/.oh-my-zsh ]
  then
    info '  Installing oh-my-zsh'
    # curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}

# Main 
#
install_ohmyzsh

echo ''
echo '  All installed!'