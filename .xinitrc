setxkbmap -model pc105 -layout us,ara -variant ,qwerty_digits -option grp:win_space_toggle
dwmstatus 2>&1 >/dev/null &
exec dwm
