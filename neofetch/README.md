# neofetch

Copy to ~/.config/neofetch

## Show

```sh
neofetch
neofetch --ascii_distro <distroname>
```

## Create logo

```sh
jp2a ~/Pictures/photo.jpg >> ~/Downloads/photo
```

## Show custom logo

```sh
neofetch --ascii ~/Downloads/photo
neofetch --ascii ~/.config/neofetch/bruh/logo
```

## Copy theme config

With custom image

```sh
cp -rf ~/.config/neofetch/bruh/config.conf ~/.config/neofetch
```

## Neofetch settings

Custom image only with full path

```sh
image_source="/home/$USER/.config/neofetch/bruh/logo"
```
