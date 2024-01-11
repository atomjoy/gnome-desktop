# Desktop scale 125%
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Load theme https://wiki.archlinux.org/title/GTK
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-Dark-BL-MOD
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-BL-MOD
GTK_THEME=Gruvbox-Dark-BL-MOD:dark
echo "export GTK_THEME=Gruvbox-Dark-BL-MOD:dark" >> ~/.profile

# Change theme icons with gtk3/4 
sudo apt install gnome-tweaks

# Load theme from ~/.bashrc (gtk4 files window titlebars) add on top
cp -rf ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0 ~/.config/gtk-4.0
