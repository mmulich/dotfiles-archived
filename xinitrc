xkbcomp -I$HOME/.xkb $HOME/.xkb/keymap/pumazi $DISPLAY
xrdb -load $HOME/.Xresources
xinput set-button-map "bcm5974" 1 2 3 5 4 7 6 9 10 11 12
exec /usr/bin/x-window-manager
