#!/bin/bash
#
# bootstrap installs things.
#
# Reference: https://github.com/amowu/dotfiles/blob/master/script/bootstrap
#

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)
source $DOTFILES_ROOT/scripts/lib.sh

set -e

echo ''

# Function: install_ohmyzsh()
#
install_ohmyzsh () {
  if [ ! -d ~/.oh-my-zsh ]
  then
    info '  Installing oh-my-zsh'
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    success '  Installed oh-my-zsh'
  fi
}

# Function: init nvm
#
init_nvm () {
  if [ ! -d ~/.nvm ]
  then
    info '  Init nvm'
    mkdir ~/.nvm
    success '  Inited nvm'
  fi
}

# Main 
#
install_ohmyzsh
init_nvm

echo ''
success '  All installed!'