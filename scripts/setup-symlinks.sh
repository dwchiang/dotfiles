#!/bin/bash

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)
source $DOTFILES_ROOT/scripts/lib.sh

set -e

echo ''

#################################
# Dotfiles
#################################

#################################
# oh my zsh
#
info '  Linking ~/.zshrc'
ln -is ~/.dotfiles/.zshrc ~/.zshrc

info '  Linking ~/.aliases'
ln -is ~/.dotfiles/.aliases ~/.aliases

success '  Linked for Oh My Zsh.'
echo ''

#################################
# git
#
info '  Linking ~/.gitconfig'
ln -is ~/.dotfiles/.gitconfig ~/.gitconfig

info '  Linking ~/.gitconfig.local'
ln -is ~/.dotfiles/.gitconfig.local ~/.gitconfig.local

info '  Linking ~/.gitignore_global'
ln -is ~/.dotfiles/.gitignore_global ~/.gitignore_global

info '  Linking ~/.git-commit-template'
ln -is ~/.dotfiles/.git-commit-template ~/.git-commit-template

success '  Linked for git.'
echo ''

#################################
# ssh
#
info '  Linking ~/.ssh'
ln -is ~/.ssh ~/ssh

success '  Linked for ssh.'
echo ''

#################################
# mackup
#
info '  Linking ~/.mackup.cfg'
ln -is ~/.dotfiles/.mackup.cfg ~/.mackup.cfg

success '  Linked for mackup.'
echo ''

# Initialize new settings
success '  Done. Please execute: `source ~/.zshrc`'