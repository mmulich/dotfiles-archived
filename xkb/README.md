# xkb Configuration

This contains keyboard mapping configuration files.

This has been build to utilize the apple laptop keyboard, which is known as ``pc105`` to xkb. (Note, xkb does have an ``apple_laptop`` model, but I found it doesn't correctly map the right alt key.)

I've found [Extending the X keyboard map with xkb](http://madduck.net/docs/extending-xkb) to be an extremely concise and helpful in doing this. There is a lot of bad information out there around the ``xmodmap`` program, which is now deprecated. It seems that ``xkb`` does not have official documenation for the end-user. To that end, the best known source of documentation is probably [AnUnreliable Guide to XKB Configuration](http://www.charvolant.org/~doug/xkb/html/index.html).

The baseline for this configuration comes from the following command: ``setxkbmap -print > ~/original.kmap``. This works out if your keyboard keys work out of the box, which most distrobutions get correct during installation.

I've adjusted some of my symbols for ergonomic reasons.

The symbols I've modified are:

- **caps lock to return** – replaces the caps lock key with return.
- **tab to backspace** – replaces the tab key with backspace.
- **right command to tab** – replaces the right command key with tab.
- **left command to control** – replaces the left command key with control.

To load these adjustments the following command was invoked: ``xkbcomp -I$HOME/dotfiles/xkb ~/dotfiles/xkb/keymap/pumazi $DISPLAY``.
