echo downoad needed packages started...
sudo pacman -S polybar dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome ttf-cascadia-code zsh kcolorchooser
yay -S i3-gaps-rounded-git
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S zsh-theme-powerlevel10k-git polybar-spotify-module
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
sh default-setup.sh 
