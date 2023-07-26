echo welcome to the dotfiles installation
echo if you get any error,report to my discord:_._eterna_._
echo copying files to .config...
cd defaultc && cp -r alacritty  dunst  i3  polybar rofi zsh  $HOME/.config 
cd -
echo copying wallpapers to /pictures/backdrops...
cp -r backdrops $HOME/pictures
echo enabling kvantum...
QT_QPA_PLATFORMTHEME=kvantum
echo please restart your computer for changing theme.
echo installing NeoCat...
sleep 1
git clone --depth 1 https://github.com/m3tozz/NeoCat.git && cd NeoCat && sudo make install
cd NeoCat && bash ./neocat.sh 
echo done! 
