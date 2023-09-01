echo downoad needed packages started...
sudo pacman -S polybar dolphin alacritty dunst rofi qt5ct kvantum  flameshot ttf-font-awesome picom ttf-cascadia-code zsh kcolorchooser nitrogen
git clone --depth 1 https://aur.archlinux.org/i3-gaps-rounded-git && cd i3-gaps-rounded-git && makepkg -si && cd -
git clone --depth 1 https://aur.archlinux.org/zsh-theme-powerlevel10k-git && cd zsh-theme-powerlevel10k-git && makepkg -si && cd -
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
sh transperent-setup.sh
