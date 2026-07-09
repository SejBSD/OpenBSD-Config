xsetroot -mod 0 0 -fg "#525252" -bg "#000000"
xidle -delay 5 -sw -program "/usr/X11R6/bin/xlock -mode random" -timeout 300 &
xrdb -merge ~/.Xresources

SCREEN=$(xrandr | grep " connected " | awk '{print $1}' | head -n 1)
xrandr --output "$SCREEN" --mode 1280x720

# DBus specific code
if [ -x ${PREFIX}/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-x11`
fi

xterm -name termbar -class termbar -T termbar -e ~/.scripts/termbar &

wsconsctl mouse.tp.tapping=1
wsconsctl mouse.reverse_scrolling=1

cwm