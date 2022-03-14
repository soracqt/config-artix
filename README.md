# dotfiles and /etc tree

```bash
git clone --recursive https://github.com/soracqt/config-artix
```

# Outputs pkglist which excluded base,base-devel group

```bash
comm -23 <(pacman -Qqe | sort) <( pacman -Qqg base-devel base | sort -u) > pkglist.txt
```

# copy files and dirs

```bash
sudo cp -r etc/ /
```

```bash
sudo cp -r usr/ /
```

```bash
rsync -av dotfiles/. ~
```

# add fstab

```bash
cat fstab|sudo tee -a /etc/fstab
```

# set /etc/resolv.conf to immutable (NetworkManager)

```bash
sudo chattr +i /etc/resolv.conf
```

# Improve security

```bash
sudo chmod 700 /boot /etc/{iptables,arptables}
```

```bash
echo "Defaults editor=/usr/bin/rvim"|sudo tee -a /etc/sudoers
```

# Change ~/.cache to tmpfs

```bash
echo "tmpfs   $HOME/.cache      tmpfs   noatime,nodev,nosuid,size=2G  0       0"|sudo tee -a /etc/fstab
```

# add libvirt group

```bash
sudo pacman -S virt-manager
sudo gpasswd -a $USER libvirt
```

# firefox clean profile && remove ~/.cache

```bash
rm -rf ~/.mozilla
cp -r dotfiles/.mozilla ~
rm -rf ~/.cache
```
