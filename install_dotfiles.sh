#!/bin/bash

cat << "EOF"

 █████╗ ██████╗ ██╗█ ███████╗    ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔══██╗██║  ██╔════╝    ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
███████║██████╔╝██║  ███████╗    ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██╔══██║██╔══██╗██║  ╚════██║    ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██║  ██║██║  ██║██║  ███████║    ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══════╝    ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
EOF
# http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=Ari's%20Dotfiles%0A
                                                                                            
# Created this script to setup Laravel's Homestead box
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


main() {
	install_vim
	install_utility_software
	install_zsh
	instal_tmux
	install_dotfiles
	install_vim_plugins
}

install_vim() {
	echo_title "Installing VIM"
	the_ppa="jonathonf/vim"
	if ! grep -q "^deb .*$the_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
		echo "Adding VIM8 Repo and Updating Cache"
		sudo add-apt-repository -y ppa:jonathonf/vim
		sudo apt update
	else
		echo "VIM8 PPA Already added"
	fi

	echo 'Installing Vim Package'
	sudo apt-get -y install vim
	# sudo apt-get -y install vim-gnome #Optional If you wan't +xterm_clipboard support
}
install_vim_plugins() {
	echo_title "Installing Vim Plugins"
	vim +PlugInstall +qall
	echo 'Finished'
}
install_utility_software() {
	echo_title "Installing GIT"
	sudo apt-get -y install git

	echo_title "Installing Ctags"
	sudo apt-get -y install exuberant-ctags

	echo_title "Installing Xclip"
	sudo apt-get -y install xclip

	echo_title "Installing Ag"
	sudo apt-get -y install silversearcher-ag
}
install_zsh() {
	echo_title "Installing ZSH"
	sudo apt-get -y install zsh

	echo_title "Installing oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	echo_title "Updating Shell to ZSH"
	chsh -s /bin/zsh
}
instal_tmux() {
	echo_title "Installing Tmux"
	sudo apt-get -y install tmux

	if ["! -d ~/.tmux/plugins/tpm"]; then
		echo_title "Installing Tmux Plugin Manager (TPM)"
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	fi

	echo_title "Installing Tmux Plugins"
	~/.tmux/plugins/tpm/bin/install_plugins

}
install_dotfiles() {
	echo_title "Installing Arithran's Dotfiles"
	if [ -d .git ]; then
		echo "Repo already Exists"
	else
		echo "Initialising repo"
		git init
		echo_title "Setting up remote origin"
		git remote add origin https://github.com/arithran/dotfiles && git config branch.master.remote origin && git config branch.master.merge refs/heads/master 
	fi

	echo "Pulling dotfiles"
	git pull
}

echo_title() {
	# echo -e "\n\e[7m    $1     \e[27m"
	# echo -e "\n\n<<<<<           $1           >>>>>"
	echo -e "\n\n<============$1=============>"
}

main
exit 0

