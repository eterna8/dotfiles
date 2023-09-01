echo downoad needed packages started...
sudo pacman -S polybar dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome ttf-cascadia-code zsh kcolorchooser
git clone --depth 1 https://aur.archlinux.org/packages/i3-gaps-rounded-git && cd i3-gaps-rounded-git && makepkg -si && cd ..
git clone --depth 1 https://aur.archlinux.org/packages/zsh-theme-powerlevel10k-git && cd zsh-theme-powerlevel10k-git makepkg -si && cd ..
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
sh setup.sh
