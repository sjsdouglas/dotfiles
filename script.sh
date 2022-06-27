#!/bin/bash

#Install GIT, GO, ZSH, CURL
sudo pacman -S --needed git go zsh curl

#Change Shell
chsh -s $(which zsh)

#Log-off
#Log-in

#Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#