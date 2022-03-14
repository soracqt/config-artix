# dotfiles and /etc tree

```bash
git clone --recursive https://github.com/soracqt/config-artix
```

# Outputs pkglist which excluded base,base-devel group

```bash
comm -23 <(pacman -Qqe | sort) <( pacman -Qqg base-devel base | sort -u) > pkglist.txt
```

# restore pkglist

```bash
paru -S --needed --sudoloop $(grep -v '^#' pkglist.txt)
```

# before install aur package

```bash
rustup install stable
chsh -s /bin/zsh
```

# firefox clean profile && remove ~/.cache

```bash
killall firefox
rm -rf ~/.mozilla ~/.cache
cp -r dotfiles/.mozilla ~
```
