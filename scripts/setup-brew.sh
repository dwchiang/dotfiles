#!/bin/bash

set -x

# Install Homebrew - https://brew.sh/
#
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/dwchiang/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Upgrade brew
#
brew upgrade

# Brew taps
#
brew tap aws/tap
brew tap brewsci/bio
brew tap brewsci/science
brew tap dart-lang/dart
# brew tap federico-terzi/espanso
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

# Logitech Options - MX Master for Mac
brew install homebrew/cask-drivers/logitech-options

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
brew install blackhole-16ch
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
brew install duf
# brew install espanso

# espanso install all-emojis
# espanso restart

brew install esptool
# brew install ethereum
brew install exiftool
brew install fswatch
brew install geoip
brew install gh
brew install gifsicle
brew install gifski
brew install git
brew install git-lfs
brew install gitui
brew install gnu-sed
brew install gnupg
brew install gnuplot
brew install go
brew install gradle
brew install graphicsmagick
brew install gsl
brew install gtkmm
brew install hey
brew install hping
brew install httpd
brew install httpie
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
brew install k6
brew install lima
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
brew install nmap
# brew install node
brew install numpy
brew install nvm
brew install opencv@2
brew install packer
brew install pandoc
# brew install paritytech/paritytech/parity
# brew install php
# brew install php@7.2
brew install pinentry-mac
brew install pngcrush
brew install poppler
brew install potrace
brew install protobuf
brew install pyenv
# brew install python@2
brew install redis
brew install romkatv/powerlevel10k/powerlevel10k
brew install siege
brew install scrcpy
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
brew install yt-dlp
brew install zint
brew install zoom
brew install zotero
brew install zsh-completions

# Casks
# brew install --cask
# Memo: Calling brew cask install is disabled! Use brew install [--cask] instead.
#
brew install --cask alfred
brew install --cask altair-graphql-client
brew install --cask aegisub
brew install --cask amazon-chime
brew install --cask android-platform-tools
brew install --cask android-studio
brew install --cask androidtool
brew install --cask angry-ip-scanner
brew install --cask bartender
brew install --cask basictex
brew install --cask blue-jeans
# brew install --cask boinc
# brew install --cask brackets
brew install --cask brave-browser
brew install --cask calibre
brew install --cask clipy
brew install --cask coolterm
brew install --cask cyberduck
brew install --cask db-browser-for-sqlite
brew install --cask dbgate
# brew install --cask deepl
brew install --cask discord
brew install --cask docker
brew install --cask drawio
brew install --cask dropbox
brew install --cask dropzone
brew install --cask dynobase
brew install --cask electrum
brew install --cask fawkes
brew install --cask ferdi
brew install --cask firefly
brew install --cask firefox
brew install --cask font-source-code-pro
brew install --cask fork
brew install --cask gitter
brew install --cask google-chrome
# brew install --cask google-cloud-sdk
brew install --cask google-drive-file-stream
brew install --cask google-hangouts
brew install --cask gpg-suite
brew install --cask grandperspective
brew install --cask hacker-menu
brew install --cask handbrake
brew install --cask ifunbox
brew install --cask iina
brew install --cask imageoptim
brew install --cask intel-haxm
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask java
# brew install --cask java6
# brew install --cask java7
# brew install --cask java8
# brew install --cask java9
# brew install --cask java10
brew install --cask joplin
brew install --cask jordanbaird-ice
brew install --cask keepassx
brew install --cask keepassxc
brew install --cask keka
brew install --cask keybase
brew install --cask keycastr
brew install --cask keystore-explorer
brew install --cask kindle
brew install --cask kobo
brew install --cask limechat
brew install --cask mcbopomofo
# brew install --cask macdown
brew install --cask macs-fan-control
brew install --cask mactracker
brew install --cask microsoft-office
# brew install --cask microsoft-teams
# brew install --cask minikube
brew install --cask mkvtoolnix
brew install --cask moom
brew install --cask mqtt-explorer
brew install --cask mycrypto
brew install --cask mysqlworkbench
# brew install --cask nally
# brew install --cask ngrok
brew install --cask nosql-workbench-for-amazon-dynamodb
# brew install --cask notion
brew install --cask numi
brew install --cask obs
brew install --cask obsidian
brew install --cask omnidisksweeper
# brew install --cask omnifocus
# brew install --cask omnigraffle
brew install --cask openmtp 
brew install --cask openvisualtraceroute
brew install --cask pdf-expert
brew install --cask phoenix-slides
brew install --cask postman
brew install --cask proxyman
brew install --cask raspberry-pi-imager
brew install --cask raycast
brew install --cask rescuetime
brew install --cask send-to-kindle
brew install --cask sequel-ace
# brew install --cask sequel-pro
# brew install --cask sizeup
# brew install --cask sketch
# brew install --cask skype
brew install --cask slack
# brew install --cask sourcetree
brew install --cask spotify
brew install --cask sqlitestudio
# brew install --cask teamviewer
brew install --cask telegram
brew install --cask thumbsup
brew install --cask transmission
brew install --cask tunnelblick
# brew install --cask vagrant
# brew install --cask vagrant-manager
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask vlc
# brew install --cask vmware-fusion
brew install --cask whatsapp
brew install --cask whatsize
brew install --cask wireshark
brew install --cask wwdc
# brew install --cask x-mirage
# brew install --cask xmind
brew install --cask xnconvert
brew install --cask xnviewmp
brew install --cask xquartz
brew install --cask yasu
# brew install --cask zoomus

# Remove outdated versions from the cellar
#
brew cleanup
