# Dotfiles

These are my dotfiles.

# Installation

At this point, I manually symlink the files into my home directory. I am however looking into [gnu stow](https://www.gnu.org/software/stow/).

# TODO

- Within ``xinitrc`` use ``xloadimage -onroot -fullscreen -border black background.png`` to set the background image. Before doing this, make sure to copyright the background image and put a by-nc-sa license on it and anything else in the backgrounds directory.
- Use some bootstraping tool for installing the dotfiles. Ideally it should also be able to update. And it'd be really nice if it could rollback.
- Use [use-package](https://github.com/jwiegley/use-package) for tidy emacs package management.
