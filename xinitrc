xkbcomp -I$HOME/.xkb $HOME/.xkb/keymap/pumazi $DISPLAY
xrdb -load $HOME/.Xresources
xinput set-button-map "bcm5974" 1 2 3 5 4 7 6 9 10 11 12
trayer --edge top --align right --SetDockType true \
       --SetPartialStrut true --expand true --width 10 \
       --transparent true --tint 0x000 --height 12 &
xscreensaver-command -exit && xscreensaver &
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi
exec /usr/bin/x-window-manager
