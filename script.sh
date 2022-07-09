#!/bin/bash



#Atualiza e... atualiza!
sudo pacman -Syu

#Instala o  GIT, GO e então o YAY
sudo pacman -S git go --needed

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

cd ~

#Instala o G-Chrome
yay -S google-chrome

#Instala o ZSH e CURL
sudo pacman -S --needed zsh curl

#Muda o shell
chsh -s $(which zsh)

#Log-off
#Log-in

#Instala o OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Instala a Polybar
#sudo pacman -S polybar

#Setup dos dotfiles - clona e linka os arquivos
#git clone https://github.com/sjsdouglas/dotfiles ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/.dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
ln -s ~/.dotfiles/.config/polybar/bars.ini ~/.config/polybar/bars.ini
ln -s ~/.dotfiles/.config/polybar/colors.ini ~/.config/polybar/colors.ini
ln -s ~/.dotfiles/.config/polybar/config.ini ~/.config/polybar/config.ini
ln -s ~/.dotfiles/.config/polybar/launch.sh ~/.config/polybar/launch.sh
ln -s ~/.dotfiles/.config/polybar/modules.ini ~/.config/polybar/modules.ini
ln -s ~/.dotfiles/.config/polybar/user_modules.ini ~/.config/polybar/user_modules.ini
ln -s ~/.dotfiles/.config/polybar/scripts/checkupdates ~/.config/polybar/scripts/checkupdates
ln -s ~/.dotfiles/.config/polybar/scripts/launcher.sh ~/.config/polybar/scripts/launcher.sh
ln -s ~/.dotfiles/.config/polybar/scripts/powermenu.sh ~/.config/polybar/scripts/powermenu.sh
ln -s ~/.dotfiles/.config/polybar/scripts/style-switch.sh ~/.config/polybar/scripts/style-switch.sh
ln -s ~/.dotfiles/.config/polybar/scripts/styles.sh ~/.config/polybar/scripts/styles.sh
ln -s ~/.dotfiles/.config/polybar/scripts/updates.sh ~/.config/polybar/scripts/updates.sh
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/colors.rasi ~/.config/polybar/scripts/rofi/colors.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/confirm.rasi ~/.config/polybar/scripts/rofi/confirm.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/launcher.rasi ~/.config/polybar/scripts/rofi/launcher.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/message.rasi ~/.config/polybar/scripts/rofi/message.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/networkmenu.rasi ~/.config/polybar/scripts/rofi/networkmenu.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/powermenu.rasi ~/.config/polybar/scripts/rofi/powermenu.rasi
ln -s ~/.dotfiles/.config/polybar/scripts/rofi/styles.rasi ~/.config/polybar/scripts/rofi/styles.rasi

cd ~

#

echo "re-log and end"