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

# Run from terminal
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-BL-MOD
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-Dark-BL-MOD

# Ten dodatek usuwa ustawienia theme z .config/gtk-4.0/gtk.css nie instalować (prawdopodobnie)
# https://extensions.gnome.org/extension/5547/custom-accent-colors 


