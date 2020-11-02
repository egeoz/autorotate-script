# autorotate-script
Auto-rotate script for X.org DEs and WMs 

## Dependencies
```
sudo apt install -y inotify-tools lm-sensors 
```

## Installation
```
sudo sensors-detect
curl https://raw.githubusercontent.com/egeoz/autorotate-script/main/autorotate.sh -o ~/.local/bin/autorotate
chmod +x ~/.local/bin/autorotate
curl https://raw.githubusercontent.com/egeoz/autorotate-script/main/autorotate.desktop -o ~/.config/autostart/autorotate.desktop
```
Reboot your system for changes to take effect.


