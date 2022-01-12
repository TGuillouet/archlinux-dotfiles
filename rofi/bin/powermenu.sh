rofi_command="rofi -theme ~/.config/rofi/powermenu.rasi"

options="Shutdown\nReboot\nlock\nSuspend\nLogout"

echo -e "$options" | $rofi_command -dmenu

