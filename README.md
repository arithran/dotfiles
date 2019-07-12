# VIM & TMUX

## Screenshot
![alt tag](https://user-images.githubusercontent.com/1830088/61106587-746aff00-a432-11e9-8f23-feddf323a780.png)

## Installation Instructions 
1) Download and Install dotfiles
```
cd ~
git clone https://github.com/arithran/dotfiles
mv dotfiles/* dotfiles/.* .
rmdir dotfiles
```

2) Install VIM or Neovim, Tmux, Ctags, Zsh, Ack & any Terminal (Following instructions are for the `brew` package manager on Mac. Change as appropriate for Linux distros)
```
brew install neovim
brew install tmux
brew install ctags
brew install zsh
brew install ack
brew cask install item2
```

3) Install Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

4) Install Tmux plugins
```
tmux
```
 Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin.


5)  Install python Support for nvim
```
pip2 install --upgrade neovim
pip3 install --upgrade neovim
```

6) Install vim plugins
```
vim
:PlugInstall
```


## Terminal font & colors

1) Solarized color scheme for most editors including most terminals (iTerm2 already ships with Solarized dark).
http://www.if-not-true-then-false.com/2012/solarized-linux/

2) Install the following fonts and update the terminal font to the same (`Hack Nerd Font` works well)
https://github.com/ryanoasis/nerd-fonts#font-installation

3) Enable Italics on the Terminal (Code comments in Vim are usually italicised, also fixes backspace issue in Tmux)
https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

## License
Licensed under the [MIT License](LICENSE.md).

