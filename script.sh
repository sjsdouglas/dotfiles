#!/bin/bash

#Instala o GIT, GO, ZSH, CURL
sudo pacman -S --needed git go zsh curl

#Muda o shell
chsh -s $(which zsh)

#Log-off
#Log-in

#Instala o OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Setup dos dotfiles - clona e linka os arquivos
git clone https://github.com/sjsdouglas/dotfiles ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/.dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
ln -s ~/.dotfiles/.config/polybar/... ~/.config/polybar/...