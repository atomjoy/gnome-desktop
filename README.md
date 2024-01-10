# Gnome 44/45 desktop extensions (Debian 12/Fedora 39)

Instalacja dodatków do gnome desktop i firefoxa.

## Instalacja firefoxa

- Zainstalować sudo apt install ffmpeg
- Pobrać firefoxa ze strony https://www.mozilla.org/pl/firefox/new/ rozpakować do **/home/user/Documenty**
- Uruchamiać z /home/user/Documenty/firefox/firefox-bin (Standardowy firefox-esr się wysypuje z youtubem podczas oglądania)

### Aktywator do firefoxa

```sh
cp /usr/share/applications/firefox.desktop firefox-bin.desktop
```

### Dodaj do pliku

```sh
[Desktop Entry]
Name=Firefox Bin
Name[pl]=Firefox Bin
Comment=Browse the World Wide Web
Comment[pl]=Przeglądanie stron WWW
GenericName=Web Browser
GenericName[pl]=Przeglądarka
X-GNOME-FullName=Firefox Bin
X-GNOME-FullName[pl]=Firefox Bin
Exec=/home/user/Dokumenty/firefox/firefox-bin %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=firefox-esr
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-s>
StartupWMClass=Firefox Bin
StartupNotify=true
```

## Zainstaluj menedżer rozszerzeń gnome

```sh
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak run com.mattjakeman.ExtensionManager
```

### Dodaj rozszerzenia

ArcMenu, Blur my Shell, Custom Accent Colors, Vitals, Unblank lock screen, Desktop Icons NG, User Themes, Dash to Panel, Dash to Dock, Dash to Panel

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/gnome-extensions.png" width="100%">


### Gnome desktop extensions (Debian/Fedora)

- Dash to Dock z animacjami się troche krzaczy ze starymi okienkami shella dublują sie paski a czasami paski znikaja :)) 
- Zainstalować zamiast tego ArcMenu i Dash to Panel (umieścić dash na dole ekranów).

<img src="https://raw.githubusercontent.com/atomjoy/gnome-desktop/main/debian-gnome-3.png" width="100%">

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

## Instalacj gnome theme gtk4

Skopiuj ze skórkę z .themes/Gruvbox-Dark-BL-MOD/gtk-4.0 do katalogu ~/.config/gtk4.0

```sh
# gtk3
sudo apt install gnome-tweaks

# gtk4 run this
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-BL-MOD

# gtk4 refresh titlebars
gsettings set org.gnome.desktop.wm.preferences theme Gruvbox-Dark-BL-MOD
```
