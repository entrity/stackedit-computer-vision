## Startup applications
Press <kbd>Alt</kbd>+<kbd>F2</kbd> and run `gnome-session-properties`

## Disable input device
```bash
/usr/bin/xinput disable ELAN\ Touchscreen
```

## Remap Keys
*See `Remap Keys`*

## Hide indicator
### with `gsettings`
```bash
gsettings set com.canonical.indicator.bluetooth visible true
```
(see [https://www.hecticgeek.com/2012/11/how-to-hide-the-bluetooth-icon-ubuntu-top-panel/](https://www.hecticgeek.com/2012/11/how-to-hide-the-bluetooth-icon-ubuntu-top-panel/))

### with autostart config
```bash
cd ~/.config/autostart
cp /etc/xdg/autostart/bluetooth-applet* .
echo "Hidden=true" | tee -a bluetooth-applet*
```
(see [https://askubuntu.com/a/81261/117018](https://askubuntu.com/a/81261/117018))
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTY1MjgxNTAzOSwxNjY3MDQ3NjRdfQ==
-->