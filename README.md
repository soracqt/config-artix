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

# add libvirt group

```bash
sudo pacman -S virt-manager
sudo gpasswd -a $USER libvirt
```
