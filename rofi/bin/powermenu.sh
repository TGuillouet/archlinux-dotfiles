rofi_command="rofi -theme ~/.config/rofi/powermenu.rasi"

shutdown=""
reboot=""
lock=""
logout=""

# Session related stuff
user=$(whoami)
session="$(loginctl | grep $user)"
session_parts=($session)

options="$shutdown\n$reboot\n$lock\n$logout"

choice="$(echo -e "$options" | $rofi_command -dmenu)"

case $choice in
	$shutdown)
		systemctl shutdown
	;;
	$reboot)
		systemctl reboot
	;;
	$lock)
		loginctl lock-session ${session_parts[0]}
	;;
	$logout)
		loginctl kill-session ${session_parts[0]}
esac
