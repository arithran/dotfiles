# Dotfiles
Nothing super crazy going on here, but some sensible neovim and bash configs

# VIM & TMUX
My Vim & Tmux settings for Web Developoers

## Screenshots
![alt tag](https://raw.githubusercontent.com/arithran/dotfiles/master/.vim/setup.png)

## Quick Install: via Curl if you have the apt package manager 
(I don't like Ubuntu but had to quickly setup Laravel's Homestead Boxes)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/arithran/dotfiles/master/install_dotfiles.sh)"
```
## Installation Instructions (Skip if the Quick Install Worked)
1) Install any version of VIM. 
I usually switch between Vim and Neovim (Can't really decide after Vim v8). 
On Fedora I install `vim-X11` and `vim-gnome` on Ubuntu since I like to access the system clipboard 

- Neovim (nvim) : https://github.com/neovim/neovim/wiki/Installing-Neovim#fedora-24-and-older
- vimx on Fedora: `sudo dnf install vim-X11`
- vim-gnome on Ubunto: `sudo apt-get install vim-gnome`

### Plugin Support (for Neovim)
1. Python Support for both Python 2 and 3 plug-ins to work
```
sudo pip2 install --upgrade neovim
sudo pip3 install --upgrade neovim
```

2. Ruby Support
```
sudo dnf install ruby-devel
sudo gem install neovim 

```

2) Download this Repo to your home folder
```
cd ~
git clone https://github.com/arithran/dotfiles
mv dotfiles/* dotfiles/.* .
rmdir dotfiles
```

3) Open Vim and Install Plugins/Dependencies 
```
:PlugInstall
```

4) Restart Vim

## Dependencies/Extras
1) ctags is needed for the tagbar plugin to work.
http://ctags.sourceforge.net/

For Fedora Linux
```
sudo dnf install ctags
```

2) xclip is needed to access the GUI clipboard

For Fedora Linux
```
sudo dnf install xclip
```

3) Follow the installation for YouCompleteMe to enable code completion
https://github.com/Valloric/YouCompleteMe#installation
./install.sh --clang-completer

4) Install Silver Searcher for FZF
https://github.com/ggreer/the_silver_searcher#installing
```
dnf install the_silver_searcher
```
# Terminal

## Extras

1) Solarized color scheme for most editors including most terminals.
http://www.if-not-true-then-false.com/2012/solarized-linux/

2) If Using zsh, Install oh-my-zsh. Instructions: http://ohmyz.sh/
```
sudo dnf install zsh
```

3) If using Bash, Install Powerline for nicer prompts

For Fedora Linx
```
sudo dnf install powerline
```


# TMUX
1) Install
```
sudo dnf install tmux
```

2) Install powerline
```
sudo dnf install tmux-powerline
```

# Windows Installation
1) Clone the repo to the Documents folder.
2) Create a hard symlink of the .vimrc and .vim folder

# Troubleshooting
1) If you get the following error while instaling the Ruby Provider
g++ error:/usr/lib/rpm/redhat/redhat-hardened-cc1: No such file or directory
```
sudo dnf install redhat-rpm-config
```

2) If comments are not italicised, see setting up custom

```
tmux-256color.terminfo
```

https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

## License
Licensed under the [MIT License](LICENSE.md).

