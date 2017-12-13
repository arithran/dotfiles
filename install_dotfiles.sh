#!/bin/bash

# Created this script to setup Laravel's Homestead box
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


the_ppa="jonathonf/vim"
if ! grep -q "^deb .*$the_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
	printf "\nAdding VIM8 Repo and Updating Cache"
	sudo add-apt-repository ppa:jonathonf/vim
	sudo apt update
else
	printf "\nVIM8 PPA Already added"
fi

printf "\nInstalling VIM"
# printf "\nInstalling VIM"
# echo -e "Normal \e[7minverted \e[27m"
#
# exit

sudo apt-get install vim
# sudo apt-get install vim-gnome #Optional If you wan't +xterm_clipboard support

printf "\nInstalling GIT"
sudo apt-get install git

printf "\nInstalling Ctags"
sudo apt-get install exuberant-ctags

printf "\nInstalling Xclip"
sudo apt-get install xclip

printf "\nInstalling Ag"
sudo apt-get install silversearcher-ag

printf "\nInstalling oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "\nUpdating Shell to ZSH"
chsh -s /bin/zsh

printf "\nInstalling Tmux"
sudo apt-get install tmux
printf "\nInstalling Tmux Plugin Manager (TPM)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

printf "\nInstalling Arithran's Dotfiles"
if [ -d .git ]; then
	printf "\nRepo already Exists"
else
	printf "\nInitialising repo"
	git init
	printf "\nSetting up remote origin"
	git remote add origin https://github.com/arithran/dotfiles && git config branch.master.remote origin && git config branch.master.merge refs/heads/master 
fi

printf "\nPulling dotfiles"
git pull

printf "\nInstalling Vim Plugins"
vim +PlugInstall +qall

exit

