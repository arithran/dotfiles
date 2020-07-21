# VIM & TMUX

## Screenshot
![alt tag](https://user-images.githubusercontent.com/1830088/61106587-746aff00-a432-11e9-8f23-feddf323a780.png)

## Installation Instructions 
NOTE:
- When you open tmux for the first time, it should install the 'tmp' plugin manager and install the listed plugins in .tmux.conf (Press `prefix` + <kbd>I</kbd> to manually install the plugins)
- When you open vim/nvim for the first time, it should install the 'plug' plugin manager and install the listed plugins in .vimrc (Run `:PlugInstall` to manually install the plugins)

1) Download and Install dotfiles
```
cd ~
git clone https://github.com/arithran/dotfiles
mv dotfiles/* dotfiles/.* .
rmdir dotfiles
```

2) Install basic programs (Example below use 'brew' which is for Mac, substitute a different command if applicable)
```bash
brew cask install item2
brew install tmux
brew install neovim
```

3) Install Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

4) Follow vim specific installation instructions
https://github.com/arithran/dotfiles/blob/master/.vimrc#L13



## Terminal font & colors

1) Solarized color scheme for most editors including most terminals (iTerm2 already ships with Solarized dark).
http://www.if-not-true-then-false.com/2012/solarized-linux/

2) Install the following fonts and update the terminal font to the same (`Hack Nerd Font` works well)
https://github.com/ryanoasis/nerd-fonts#font-installation

3) Enable Italics on the Terminal (Code comments in Vim are usually italicised, also fixes backspace issue in Tmux)
https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

## License
Licensed under the [MIT License](LICENSE.md).

