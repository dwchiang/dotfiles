#!/bin/bash

# Refer:
#    - https://opensource.com/article/19/5/python-3-default-mac

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)
source $DOTFILES_ROOT/scripts/lib.sh

set -e

echo ''

# Refer: 
#    - https://stackoverflow.com/questions/29687140/install-latest-python-version-with-pyenv
#    - `pyenv install --list`
#
info '  Installing latest python version'
pyenv install $(pyenv install --list | grep -v - | grep -v b | tail -1)

info '  Set this version as global default version for pyenv'
pyenv global $(pyenv install --list | grep -v - | grep -v b | tail -1)

info '  Check current version'
pyenv version

success '  Finished the setup for python'
echo ''