clear
                echo -e '\033[0m 
  _   _             _____      _   
 | \ | |           / ____|    | |  
 |  \| | ___  ___ | |     __ _| |_ 
 | . ` |/ _ \/ _ \| |    / _` | __|Smile
 | |\  |  __/ (_) | |___| (_| | |_ 
 |_| \_|\___|\___/ \_____\__,_|\__|                                       
'
rm -r /home/$USER/.config/neofetch
sleep 1
        cd Smile/ && cp -r neofetch /home/$USER/.config
clear   
neofetch