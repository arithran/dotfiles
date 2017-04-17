# Dotfiles
Nothing super crazy going on here, but some sensible neovim and bash configs

# Neovim
My Neovim settings for PHP based Fullstack Web Developoers

## Screenshots
![alt tag](https://raw.githubusercontent.com/arithran/dotfiles/master/.config/nvim/Screenshots/neovim-setup.png)


## Installation Instructions

1) Download this Repo to your home folder
```
cd ~
git clone https://github.com/arithran/dotfiles
mv dotfiles/* dotfiles/.* .
rmdir dotfiles
```

2) Open Neovim(nvim) and Install Plugins/Dependencies 
```
:PlugInstall
```

3) Restart nvim

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

# Terminal

## Extras

1) Solarized color scheme for most editors including most terminals.
http://www.if-not-true-then-false.com/2012/solarized-linux/

2) If Using zsh, Install oh-my-zsh. Instructions: http://ohmyz.sh/

3) If using Bash, Install Powerline for nicer prompts

For Fedora Linx
```
sudo dnf install powerline
```

# Help Setting up similar repos
https://www.foraker.com/blog/get-your-dotfiles-under-control
