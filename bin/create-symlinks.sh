# script for creating symlinks from .dotfiles-folder to original destinations

# i3
sudo ln -svf $HOME/.dotfiles/.i3/config /etc/i3/config
sudo ln -svf $HOME/.dotfiles/.i3/i3status.conf /etc/i3status.conf

# etc
sudo ln -svf $HOME/.dotfiles/inputrc /etc/inputrc
sudo ln -svf $HOME/.dotfiles/X11/xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d/90-touchpad.conf
sudo ln -svf $HOME/.dotfiles/X11/xorg.conf.d/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf

# dotfiles
sudo ln -svf $HOME/.dotfiles/.bashrc $HOME/.bashrc
sudo ln -svf $HOME/.dotfiles/.vimrc $HOME/.vimrc