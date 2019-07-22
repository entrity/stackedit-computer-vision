This takes some tricks. My current 6TB MyCloud device is running a Linux distro which I don't know: "Linux WDMyCloud 3.10.39 #1 SMP Thu Nov 15 21:22:21 CST 2018 2014T20p4 Build-git0451941 armv7l GNU/Linux"

## Installing packages
Download the package from the web. Then extract the package:
```bash
ar -x $MYPKG # see NB.1
tar -xzf data.tar.gz # see NB.2
```

NB.1: I downloaded a .deb file, but the OS didn't support `dpkg -x`, but `.deb` files are just archive files, so `ar` ca

NB.2: I did this with [libimage-exiftool-perl](https://packages.debian.org/buster/all/libimage-exiftool-perl/download), and the 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTcwODgxMDIzMV19
-->