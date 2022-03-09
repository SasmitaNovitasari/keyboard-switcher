# ubuntu-keyboard-switcher
This for enable and disable internal keyboard on ubuntu when external keyboard plug in. Tested in ubuntu 20.04

# Installation
Please do not run keyboard.sh before you follow this instruction

1. Open your terminal and type 'xinput list'. It will show you all input device
2. Your internal keyboard will looks like 'AT Translated Set 2 keyboard'
3. Remember the id and slave keyboard number
4. chmod +x keyboard.sh to change script permission
5. Open keyboard.sh in editor file

icon_on="/YOUR_PATH/ubuntu-keyboard-switcher/icon/on.png"
icon_off="/YOUR_PATH/ubuntu-keyboard-switcher/icon/off.png"
fconfig=".keyboard"
id=18 // Change this with your keyboard id
master_id=3 // This for slave keyboard

Please do not put ubuntu-keyboard-switcher directory to root
Edit keyboard.desktop file

[Desktop Entry]
Version=1.3
Type=Application
Name=Keyboard Switcher
Icon=/YOUR_PATH/ubuntu-keyboard-switcher/icon/keyboard.png
Exec=/YOUR_PATH/ubuntu-keyboard-switcher/keyboard.sh
Path=/YOUR_PATH/ubuntu-keyboard-switcher
NoDisplay=false
Categories=Utility;
StartupNotify=false
Terminal=false

Save file and copy to ~/.local/share/applications
You'll see launcher icon and now it ready to use
