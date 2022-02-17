# dotfiles and /etc tree

```bash
git clone --recursive https://github.com/soracqt/config-artix
```

# copy files and dirs

```bash
cd etc
sudo cp -r . /etc
```

```bash
cd usr
sudo cp -r . /usr
```

```bash
cd dotfiles
rsync -av . ~
```

# Outputs pkglist which excluded base,base-devel group

```bash
comm -23 <(pacman -Qqe | sort) <( pacman -Qqg base-devel base | sort -u) > pkglist.txt
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

Enable apparmor

```bash
lsm=lockdown,yama,apparmor,bpf
```

# Change ~/.cache to tmpfs

```bash
echo "tmpfs   $HOME/.cache      tmpfs   noatime,nodev,nosuid,size=2G  0       0"|sudo tee -a /etc/fstab
```

# make dir for pkgbuilds

```bash
mkdir ~/.local/share/pkgbuilds
```
