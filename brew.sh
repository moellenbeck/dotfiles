#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# mm: brew install ringojs
# mm: brew install narwhal

# Install more recent versions of some OS X tools.
# mm: brew install vim --override-system-vi
# mm: brew install homebrew/dupes/grep
# mm: brew install homebrew/dupes/screen
# mm: brew install homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# mm: brew install bfg
# mm: brew install binutils
# mm: brew install binwalk
# mm: brew install cifer
# mm: brew install dex2jar
# mm: brew install dns2tcp
# mm: brew install fcrackzip
# mm: brew install foremost
# mm: brew install hashpump
# mm: brew install hydra
# mm: brew install john
# mm: brew install knock
# mm: brew install nmap
# mm: brew install pngcheck
# mm: brew install socat
# mm: brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
# mm: brew install xpdf
brew install xz

# Install other useful binaries.
# mm: brew install ack
#brew install exiv2
# mm: brew install git
# mm: brew install imagemagick --with-webp
# mm: brew install lua
# mm: brew install lynx
# mm: brew install p7zip
# mm: brew install pigz
# mm: brew install pv
# mm: brew install rename
# mm: brew install rhino
# mm: brew install tree
# mm: brew install webkit2png
# mm: brew install zopfli

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
# mm: brew install node

# mm : additionals
brew install rabbitmq

brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

brew install postgresql
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents

brew info mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents

brew install haproxy
brew tap homebrew/dupes

brew install openldap
brew install nginx
brew install siege
brew install git-flow

# dotnet on windows
brew tap aspnet/k
brew install kvm
cp init/kvm.sh /usr/local/bin/


# Remove outdated versions from the cellar.
brew cleanup
