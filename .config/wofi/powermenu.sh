#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Log Out\n  Lock" | wofi --dmenu -i)

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Suspend") systemctl suspend ;;
	"  Log Out") exit ;;
	"  Lock") swaylock --color 000000 ;;
	*) exit 1 ;;
esac
