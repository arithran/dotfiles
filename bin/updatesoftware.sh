#!/bin/bash

# brew
brew update
brew upgrade
brew doctor

# vim
vim +PlugUpgrade +PlugUpdate +qall
