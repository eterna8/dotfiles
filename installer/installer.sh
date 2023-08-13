greenColor="#32a852"

gum style --bold --foreground=$greenColor --margin "1 2" "Welcome to the installer"
gum style --foreground "215" --margin "0 2" "If you get any error, report it on GitHub or to my discord server: _._eterna_._"

baseInstallation() {
  gum style --foreground=$greenColor --margin "1 2" "Installing required packages"
  sudo pacman -S polybar dolphin alacritty dunst rofi qt5ct kvantum flameshot ttf-font-awesome ttf-cascadia-code zsh kcolorchooser
  yay -S i3-gaps-rounded-git zsh-theme-powerlevel10k-git polybar-spotify-module
  
  if [ "$(basename "$SHELL")" = "zsh" ]; then
    gum style --bold --foreground=$greenColor "Already using zsh"
  else
    gum style --foreground 215 --bold "Changing the default shell to zsh"
    chsh -s $(which zsh)
  fi

  gum spin --spinner meter --title "Installing OH-My-Zsh" -- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  gum style --foreground=$greenColor --margin "1 2" "Adding powerlevel10k theme to ~/.zshrc"
  echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc 

  sleep 2
  clear
  gum style --foreground=$greenColor --margin "1 2" "Copying wallpapers to ~/Pictures/backdrops..."
  cp -r ../backdrops ~/Pictures/

  gum spin -spinner meter --title "Installing NeoCat" -- git clone --depth 1 https://github.com/m3tozz/NeoCat.git
  cd NeoCat && sudo make install && bash ./neocat.sh && cd -
  gum style --foreground=$greenColor --bold --margin "1 2" "Done!"
}

picomInstallation() {
  gum style --foreground=$greenColor --margin "1 2" "Picom included installation" 
  gum style --foreground=$greenColor "Copying files to ~/.config..."
  cp -r ../config/* ~/.config
}

defaultInstallation() {
  gum style --foreground=$greenColor --margin "1 2" "Default Installation"
  gum style --foreground=$greenColor "Copying files to ~/.config..."
  cp -r ../defaultc/* ~/.config
  baseInstallation
}

gum confirm "Would you like to download the picom included config" && picomInstallation || defaultInstallation
