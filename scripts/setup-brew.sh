#!/bin/bash

set -x

# Install Homebrew - https://brew.sh/
#
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Upgrade brew
#
brew upgrade

# Brew taps
#
brew tap aws/tap
brew tap brewsci/bio
brew tap brewsci/science
brew tap dart-lang/dart
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services
brew tap hsatac/toybox
brew tap jlhonora/lsusb
brew tap mas-cli/tap
brew tap paritytech/paritytech
# Collection of small scripts - https://github.com/vitorgalvao/homebrew-tiny-scripts
brew tap vitorgalvao/tiny-scripts

# brew installs
#   brew leaves - https://apple.stackexchange.com/questions/279077/how-can-i-install-all-brew-packages-listed-in-a-text-file
#
brew install ack
brew install ant
brew install autojump
brew install automake
brew install aws/tap/aws-sam-cli
brew install awscli
brew install bash-completion
brew install bat
brew install bdw-gc
brew install boost
brew install boost-build
brew install brew-cask-completion
brew install vitorgalvao/tiny-scripts/cask-repair
brew install certbot
brew install cmake
brew install cocoapods
brew install colordiff
brew install composer
brew install dart-lang/dart/dart
brew install dnsmap
# brew install docker
brew install esptool
# brew install ethereum
brew install exiftool
brew install geoip
brew install gh
brew install git
brew install gnu-sed
brew install gnupg
brew install gnuplot
brew install go
brew install gradle
brew install graphicsmagick
brew install gsl
brew install gtkmm
brew install hping
brew install httpd
brew install hugo
brew install ideviceinstaller
brew install imagemagick
brew install imap-uw
brew install intltool
brew install ios-deploy
brew install jenv
brew install jmeter
brew install jpegoptim
brew install jq
brew install libiconv
brew install libmemcached
brew install librsync
brew install libsigc++
brew install libsoup
brew install libyubikey
brew install little-cms
brew install lsusb
brew install mackup
brew install macvim
brew install mas-cli/tap/mas
brew install maven
brew install mcrypt
# brew install minikube
# brew install mysql
# brew install nginx
# brew install node
brew install numpy
brew install nvm
brew install opencv@2
brew install packer
# brew install paritytech/paritytech/parity
# brew install php
# brew install php@7.2
brew install pngcrush
brew install poppler
brew install potrace
brew install protobuf
brew install pyenv
# brew install python@2
brew install redis
brew install siege
brew install socat
brew install speedtest-cli
brew install sphinx-doc
brew install ssh-copy-id
brew install termius
brew install the_silver_searcher
brew install tig
brew install tmux
brew install tree
brew install watch
brew install wget
brew install hsatac/toybox/wifi-password-qr
brew install wireshark
brew install youtube-dl
brew install zsh-completions

# brew cask installs
#
brew cask install alfred
brew cask install amazon-chime
brew cask install android-platform-tools
brew cask install android-studio
brew cask install androidtool
brew cask install angry-ip-scanner
brew cask install bartender
brew cask install blue-jeans
# brew cask install boinc
brew cask install brackets
brew cask install calibre
brew cask install clipy
brew cask install coolterm
brew cask install cyberduck
brew cask install db-browser-for-sqlite
brew cask install discord
brew cask install docker
brew cask install drawio
brew cask install dropbox
brew cask install dynobase
brew cask install electrum
brew cask install firefox
brew cask install font-source-code-pro
brew cask install fork
brew cask install gitter
brew cask install google-chrome
# brew cask install google-cloud-sdk
brew cask install google-drive-file-stream
brew cask install google-hangouts
brew cask install gpg-suite
brew cask install grandperspective
brew cask install handbrake
brew cask install ifunbox
brew cask install imageoptim
brew cask install intel-haxm
brew cask install istat-menus
brew cask install iterm2
brew cask install java
# brew cask install java6
# brew cask install java7
# brew cask install java8
# brew cask install java9
# brew cask install java10
brew cask install joplin
brew cask install keepassx
brew cask install keka
brew cask install keybase
brew cask install keycastr
brew cask install keystore-explorer
brew cask install kindle
brew cask install kobo
brew cask install limechat
brew cask install macdown
brew cask install macs-fan-control
brew cask install mactracker
brew cask install microsoft-office
# brew cask install microsoft-teams
# brew cask install minikube
brew cask install moom
brew cask install mysqlworkbench
brew cask install nally
brew cask install ngrok
brew cask install nosql-workbench-for-amazon-dynamodb
brew cask install obs
brew cask install omnidisksweeper
brew cask install omnifocus
brew cask install omnigraffle
brew cask install openvisualtraceroute
brew cask install phoenix-slides
brew cask install postman
brew cask install proxyman
brew cask install rescuetime
brew cask install send-to-kindle
brew cask install sequel-ace
brew cask install sequel-pro
# brew cask install sizeup
brew cask install sketch
brew cask install skype
brew cask install slack
brew cask install sourcetree
brew cask install spotify
# brew cask install teamviewer
brew cask install telegram
brew cask install thumbsup
brew cask install transmission
brew cask install tunnelblick
# brew cask install vagrant
# brew cask install vagrant-manager
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
# brew cask install vmware-fusion
brew cask install whatsapp
brew cask install whatsize
brew cask install wireshark
brew cask install wwdc
# brew cask install x-mirage
brew cask install xmind
brew cask install xnconvert
brew cask install xnviewmp
brew cask install xquartz
brew cask install yasu
brew cask install zoomus

# Remove outdated versions from the cellar
#
brew cleanup
