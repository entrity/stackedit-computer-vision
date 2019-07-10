# Startup applications
Press <kbd>Alt</kbd>+<kbd>F2</kbd> and run `gnome-session-properties`

# Disable input device
```bash
/usr/bin/xinput disable ELAN\ Touchscreen
```

# Remap keys

## For a specific keyboard
*These instructions are taken from the comments in `/lib/udev/hwdb.d/60-keyboard.hwdb`*

1. Write your own rules to a (possibly new) file `/lib/udev/hwdb.d/70-keyboard.hwdb`, as in the example below.
    - Get event number from `sudo evtest`
    - Get keyboard key codes (hex) from `sudo evtest`
    - Get action names from `/lib/udev/hwdb.d/60-keyboard.hwdb`
    - Get bus code (usb, bluethooth, etc) from `/usr/include/linux/input.h`
    - Get vendor, product, version from `/sys/class/input/event<X>/device/id`
        - NB: You can use a wildcard `*` anywhere you like in these
2. Run bash commands to load the new rules, given below.

### Example rules file `/lib/udev/hwdb.d/70-keyboard.hwdb`
```
evdev:input:b0005v004Cp0267e0067*
 KEYBOARD_KEY_700e6=rightctrl
 KEYBOARD_KEY_700e3=leftalt
 KEYBOARD_KEY_700e2=leftmeta
 KEYBOARD_KEY_70044=home # f11 => Home
 KEYBOARD_KEY_70045=end # f12 => End
```

### Commands to load rules
```bash
# Make sure you figure out what eventXX should be for the chosen keyboard. Use `sudo evtest` to find out.
sudo systemd-hwdb update
sudo udevadm trigger /dev/input/event<XX>
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM4MzEyMjM3MiwtMTcwMzk1MzMzNiwtMT
Y0MjM3NTIxM119
-->