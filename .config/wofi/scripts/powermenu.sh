#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu --width=10% --lines=6 | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		hyprlock
                ;;
        logout)
                swaymsg exit
                ;;
esac
