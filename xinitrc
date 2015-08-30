xkbcomp -I$HOME/.xkb $HOME/.xkb/keymap/pumazi $DISPLAY
xrdb -load $HOME/.Xresources
exec /usr/bin/x-window-manager
