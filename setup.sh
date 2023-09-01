echo welcome to the dotfiles installation
echo if you get any error,report to my discord:_._eterna_._ or my Instagram:_._eterna_._ and thanks for installation!
echo copying files to .config...
cd defaultc && cp -r alacritty  dunst  i3  polybar rofi scripts  $HOME/.config
cd -
echo copying wallpapers to /Pictures/backdrops...
cp -r backdrops $HOME/Pictures
echo enabling QT5CT(For themes&icons)
QT_QPA_PLATFORMTHEME=qt5ct
echo please restart your computer for changing theme.
echo installing NeoCat...
sleep 1
git clone --depth 1 https://github.com/m3tozz/NeoCat.git && cd NeoCat && sudo make install
cd NeoCat && bash ./neocat.sh
echo done!
