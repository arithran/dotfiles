#!/bin/bash


# Created this script to setup Laravel's Homestead box
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


echo ""
echo "Adding VIM8 Repo and Updating Cache"
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update

echo ""
echo "Installing VIM"
sudo apt-get install vim
# sudo apt-get install vim-gnome #Optional If you wan't +xterm_clipboard support

echo ""
echo "Installing GIT"
sudo apt-get install git



echo ""
echo "Installing Ctags"
sudo apt-get install exuberant-ctags

echo ""
echo "Installing Xclip"
sudo apt-get install xclip

echo ""
echo "Installing Ag"
sudo apt-get install silversearcher-ag

echo ""
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo ""
echo "Installing Tmux"
sudo apt-get install tmux
echo "Installing Tmux Plugin Manager (TPM)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ""
echo "Installing Arithran's Dotfiles"
echo ""
if [ -d .git ]; then
	echo "Repo already Exists"
else
	echo "Initialising repo"
	git init
	echo "Setting up remote origin"
	git remote add origin https://github.com/arithran/dotfiles && git config branch.master.remote origin && git config branch.master.merge refs/heads/master 
fi

echo "Pulling dotfiles"
git pull

exit

