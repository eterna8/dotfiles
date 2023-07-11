echo welcome to the dotfiles installation
echo if you get any error,report to my discord:_._eterna_._
echo copying files to .config...
cd config && cp -r alacritty  dunst  i3  polybar  rofi  $HOME/.config 
cd -
echo copying wallpapers to /pictures/backdrops...
cp -r backdrops $HOME/pictures
echo done!
