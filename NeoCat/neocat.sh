echo -e $red "Made By M3TOZZ For Eterna"
sleep 1
clear
                echo -e '\033[0m 
  _   _             _____      _   
 | \ | |           / ____|    | |  
 |  \| | ___  ___ | |     __ _| |_ 
 | . ` |/ _ \/ _ \| |    / _` | __|eterna8/dotfiles
 | |\  |  __/ (_) | |___| (_| | |_ 
 |_| \_|\___|\___/ \_____\__,_|\__|                                       
'
rm -r /home/$USER/.config/neofetch
sleep 1
        cd dotfiles/ && cp -r neofetch /home/$USER/.config
clear   
neofetch