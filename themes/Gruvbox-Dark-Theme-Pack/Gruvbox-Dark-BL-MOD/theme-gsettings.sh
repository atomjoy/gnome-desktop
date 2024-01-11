# Desktop scale 125%
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Change theme icons with gtk3/4 
sudo apt install gnome-tweaks

# Add theme to ~/.themes then load theme from ~/.bashrc  add on top (Nautilus files)
cp -rf ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0 ~/.config/gtk-4.0

# Create if gtk.css file does not exist (usuwa się gtk.css z .config/gtk-4.0 po wylogowaniu)
cp -rf ~/.config/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk.css

# Set
GTK_THEME=Gruvbox-Dark-BL-MOD

# Run from terminal (a to zadziała za kilkanaście sekund :D:D:D:D idiotyczne)
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-BL-MOD
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-Dark-BL-MOD

# !!! Co za linux-owe cudaki !!!


