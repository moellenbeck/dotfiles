#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

# install nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | bash

# install oh my zsh
curl -L http://install.ohmyz.sh | sh

 git config --global user.name "Martin Moellenbeck"
 git config --global user.email "martin.moellenbeck@5minds.de"
