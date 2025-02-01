#!/bin/bash

chosen=$(echo -e " Power Off\n Restart\n Lock\n Logout\n Suspend" | rofi -dmenu -i -p "Select an opt>

case "$chosen" in
    " Power Off")
        systemctl poweroff
        ;;
    " Restart")
        systemctl reboot
        ;;
    " Lock")
        /home/sikandar/lock_screen.sh
        ;;
    " Logout")
        i3-msg exit
        ;;
    *)
        exit 0
        ;;
esac

