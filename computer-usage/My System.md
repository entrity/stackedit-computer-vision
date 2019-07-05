# Startup applications

Press <kbd>Alt</kbd>+<kbd>F2</kbd> and run `gnome-session-properties`

# Remap keys

## For a specific keyboard
*These instructions are taken from the comments in `/lib/udev/hwdb.d/60-keyboard.hwdb`*

1. Write your own rules to a (possibly new) file `/lib/udev/hwdb.d/70-keyboard.hwdb`, as in the example below.
2. Run bash commands to load the new rules, given below.

### Example rules file
```
# /lib/udev/hwdb.d/70-keyboard.hwdb

##################
# Apple Magic Keyboard
# Bus 0x05 is Bluetooth. See /usr/include/linux/input.h
# vendor, product, version are in /sys/class/input/eventX/device/id.
# `sudo evtest` shows that the apple keyboard on my system is currently event20
#################
evdev:input:b0005v004Cp0267e0067*
 KEYBOARD_KEY_7003e=brightnessdown # F5
 KEYBOARD_KEY_7003f=brightnessup # F6
 KEYBOARD_KEY_700e6=rightctrl
 KEYBOARD_KEY_700e7=rightalt
 KEYBOARD_KEY_700e3=leftalt
 KEYBOARD_KEY_700e2=leftmeta
 KEYBOARD_KEY_70042=pageup # f9
 KEYBOARD_KEY_70043=pagedown # f10
 KEYBOARD_KEY_70044=home # f11
 KEYBOARD_KEY_70045=end # f12
```

### Commands to load rules
```bash
# Make sure you figure out what eventXX should be for the chosen keyboard. Use `sudo evtest` to find out.
sudo systemd-hwdb update
sudo udevadm trigger /dev/input/event<XX>
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3MDM5NTMzMzYsLTE2NDIzNzUyMTNdfQ
==
-->