This takes some tricks. My current 6TB MyCloud device is running a Linux distro which I don't know: "Linux WDMyCloud 3.10.39 #1 SMP Thu Nov 15 21:22:21 CST 2018 2014T20p4 Build-git0451941 armv7l GNU/Linux"

## Mounting MyCloud
```bash
sudo mount -t cifs -o username=mar,workgroup=WORKGROUP,password="$PASS" "//$IP_ADDR/$PATH" "$DST"
```

## Adding executables

I have created a directory tree in *within* one of my shares which mimics the `/usr` tree. This is because it's not safe to install things onto WD MyCloud's root partition.

## Installing packages
Download the package from the web. Then extract the package:
```bash
ar -x $MYPKG # see NB.1
tar -xzf data.tar.gz # see NB.2
```

NB.1: I downloaded a .deb file, but the OS didn't support `dpkg -x`, but `.deb` files are just archive files, so `ar` can extract them.

NB.2: I did this with [libimage-exiftool-perl](https://packages.debian.org/buster/all/libimage-exiftool-perl/download), and the control and data files were `.tar.xz`, so I needed to untar with `-J` instead of `-z`, and the OS didn't support `-J`, so I untarred on my workstation and then ran `rsync -a --ignore-existing ...` to get the files where I wanted them.

## Adding an SSH key

The `/home/root` directory is on a tmpfs, so I can't really put anything there. Therefore, I put `.ssh` within one of my shares, and after every restart, I run a shell script which *copies* this directory into `/home/root`. (Don't symlink. It won't work.)

## Setup script, .bashrc, &c.

**`/shares/mar/setup.sh`**
```bash
#!/bin/bash
cp -r /shares/mar/.ssh $HOME
ln -s /shares/mar/bash $HOME
ln -s /shares/mar/Wat $HOME
ln -s /shares/mar $HOME
ln -s /shares/mar/Youtube $HOME
ln -s /shares/mar/root/usr/bin $HOME
```

**`/shares/mar/.bashrc`**

```bash
alias ll='ls -l'
THISDIR=$(dirname $(readlink -f $BASH_SOURCE))
ROOTDIR=/shares/mar/root
export LD_LIBRARY_PATH=$ROOTDIR/usr/lib
export PATH=$PATH:$ROOTDIR/usr/bin
export PYTHONPATH=$PYTHONPATH:$ROOTDIR/usr/lib/python3/dist-packages
export LANG="en_US.UTF-8" # This prevents youtube-dl from using --restrict-filenames
export PYTHONIOENCODING=utf-8
export PERL5LIB=/shares/mar/root/usr/share/perl5 # This allows exiftool to find my installed perl libs
```

<!--stackedit_data:
eyJoaXN0b3J5IjpbNDg2MzU4NjgsLTI3Mjk4MTIzM119
-->