#!/bin/bash


# Change this with your path
# Please do not put the directory in root
icon_on="/home/sasmitadn/keyboard-switcher/icon/on.png"
icon_off="/home/sasmitadn/keyboard-switcher/icon/off.png"


fconfig=".keyboard"

# Change this before run this file.
# use 'xinput list' to see your internal keyboard id and master id
# Your internal keyboard is 'AT Translated Set 2 keyboard's
id=18
master_id=3

if [ ! -f $fconfig ];
	then
		echo "Creating config file"
		echo "enabled" > $fconfig
		var="enabled"
	else
		read -r var < $fconfig
		echo "Keyboard is : $var"
fi

if [[ $var = "disabled" ]];
	then
		notify-send -i $icon_on "Internal Keyboard ON" \ "Keyboard connected !";
		echo "enable keyboard..."
		xinput reattach $id $master_id
		echo "enabled" > $fconfig
	elif [ $var = "enabled" ]; then
		notify-send -i $icon_off "Internal Keyboard OFF" \ "Keyboard disconnected";
		echo "disable keyboard"
		xinput float $id
		echo 'disabled' > $fconfig
fi
