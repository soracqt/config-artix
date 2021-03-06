# dotfiles and /etc tree

# Outputs pkglist which excluded base,base-devel group

```bash
comm -23 <(pacman -Qqe | sort) <( pacman -Qqg base-devel base | sort -u) > pkglist.txt
```

# paru

```bash
cd /tmp; git clone https://aur.archlinux.org/paru-bin.git; cd paru-bin; makepkg -si
```

# setup script

```bash
./setup.sh
```

# restore pkglist

```bash
paru -S --needed --sudoloop $(grep -v '^#' pkglist.txt)
```

# before install aur package

```bash
rustup install stable; chsh -s /bin/zsh; sudo sh -c 'usbguard generate-policy -PH > /etc/usbguard/rules.conf'; cd /tmp/config-artix; ./scripts/fix-permission-for-gnupg.sh
```

# enable daemons

```bash
./scripts/daemon.sh
```

# firefox clean profile && remove ~/.cache

```bash
killall firefox; rm -rf ~/.mozilla ~/.cache/*; cp -r dotfiles/.mozilla ~
```

# SKK edict

```bash
curl -L 'https://raw.github.com/skk-dev/dict/master/SKK-JISYO.edict' -o ~/.local/share/fcitx5/skk/SKK-JISYO.edict
```
