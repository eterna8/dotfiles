cho downoad needed packages started...
sudo pacman -S polybar i3 dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome picom ttf-cascadia-code zsh
chsh -s /bin/zsh
yay -S zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
sh setup.sh
