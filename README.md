# Gnome desktop extensions (Debian 12/Fedora 39)

Instalacja dodatków do gnome desktop i zmiana stylów.

## Menedżer Rozszerzeń gnome

Zainstaluj **Menedżer Rozszerzeń** gnome z panelu aplikacji ręcznie lub z terminala.

```sh
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak run com.mattjakeman.ExtensionManager
```

### Dodaj rozszerzenia

ArcMenu, Blur my Shell, Vitals, Unblank lock screen, Desktop Icons NG, User Themes, Dash to Panel, Dash to Dock, Dash to Panel, Custom Accent Colors

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/gnome-extensions.png" width="100%">

### Gnome desktop extensions (Debian/Fedora)

- Dash to Dock z animacjami się troche krzaczy ze starymi okienkami shella dublują sie paski a czasami paski znikaja :))
- Zainstalować zamiast tego ArcMenu i Dash to Panel (umieścić dash na dole ekranów).
- Ten dodatek **Custom Accent Colors** usuwa ustawienia theme z .config/gtk-4.0/gtk.css nie instalować z themes gtk4

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/debian-gnome-3.png" width="100%">

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/gruvbox-theme.png" width="100%">

## Dodaj skalowanie ekranów (125%/150%/175%)

Wpisz w terminalu i zrestartuj system

```sh
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
```

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/fractional-scaling-in-gnome.png" width="100%">

## Powiększ interfejs logowania (login screen)

```sh
sudo nano -m /etc/gdm3/greeter.dconf-defaults
```

### Dodaj na końcu

```sh
# Scaling Factor Setting
[org/gnome/desktop/interface]
scaling-factor=uint32 2
```

### Odśwież

```sh
sudo dpkg-reconfigure gdm3
```

## Instalacja gnome theme gtk4

Ten dodatek **Custom Accent Colors** usuwa ustawienia theme z **~/.config/gtk-4.0/gtk.css** nie instalować z themes gtk4

```sh
# Gtk3
sudo apt install gnome-tweaks

# Gtk4 skopiuj style
cp -rf ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0 ~/.config

# Gtk4 refresh settings
GTK_THEME=Gruvbox-Dark-BL-MOD
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-BL-MOD
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-Dark-BL-MOD
```

## Instalacja firefoxa

- Zainstalować sudo apt install ffmpeg
- Pobrać firefoxa ze strony <https://www.mozilla.org/pl/firefox/new/> rozpakować do **/home/user/Documenty**
- Uruchamiać z /home/user/Documenty/firefox/firefox-bin (Standardowy firefox-esr się wysypuje z youtubem podczas oglądania)

### Aktywator do firefoxa

```sh
# Lista aktywatorów
# /usr/share/applications/firefox.desktop

nano ~/.local/share/applications/firefox.desktop
```

### Dodaj do pliku

```sh
[Desktop Entry]
Name=Firefox :)
Name[pl]=Firefox :)
Comment=Browse the World Wide Web
Comment[pl]=Przeglądanie stron WWW
GenericName=Web Browser
GenericName[pl]=Przeglądarka WWW
X-GNOME-FullName=Firefox Web Browser
X-GNOME-FullName[pl]=Przeglądarka WWW Firefox
Exec=/home/user/Szablony/firefox/firefox-bin %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=firefox_alt2
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/htt>
StartupWMClass=Firefox-bin
StartupNotify=true
```

## Windows ntfs zapis/odczyt

```sh
# Show partitions
sudo lsblk
sudo parted -l

# Unmount
sudo umount /dev/sda4

# Falling back to read-only mount because the NTFS partition is in an unsafe state.
sudo ntfsfix /dev/sda4

# Create
sudo mkdir -p /mnt/windows
sudo chmod -R 2777 /mnt/windows
sudo chown -R root:user /mnt/windows
```

### Zamontuj z nautilus (file manager) lub z terminala

```sh
# Mount
sudo mount -t ntfs-3g -o rw /dev/sda4 /mnt/windows

# Show
sudo mount | grep windows
```

### Zamontuj na stałe

```sh
# Falling back to read-only mount because the NTFS partition is in an unsafe state.
sudo ntfsfix /dev/sda4

# In file
nano /etc/fstab

# Add
/dev/sda4 /mnt/windows ntfs-3g rw,uid=1000,gid=1000,dmask=0000,fmask=0000 0 0

# Reload /etc/fstab and then restart system if not mounted
systemctl daemon-reload
```
