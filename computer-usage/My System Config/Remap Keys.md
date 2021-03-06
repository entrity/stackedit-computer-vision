# Remap keys

*NB: for mouse buttons, the comments in my  `/etc/udev/hwdb.d/70-mouse-local.hwdb` advise putting custom changes into `/etc/udev/hwdb.d/71-mouse-local.hwdb`*

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
```bash
# Format is evdev:input:b<BUS>v<VENDOR>p<PRODUCT>e<VERSION>-<MODALIAS>
# The hex codes should be in all caps
# === Apple Magic Keyboard ===
evdev:input:b0005v004Cp0267e0067*
 KEYBOARD_KEY_700e6=rightctrl
 KEYBOARD_KEY_700e3=leftalt
 KEYBOARD_KEY_700e2=leftmeta
 KEYBOARD_KEY_70044=home # f11 => Home
 KEYBOARD_KEY_70045=end # f12 => End
# === same thing over USB ===
evdev:input:b0003v05ACp0267e0110*
 KEYBOARD_KEY_700e6=rightctrl
 KEYBOARD_KEY_700e3=leftalt
 KEYBOARD_KEY_700e2=leftmeta
 KEYBOARD_KEY_70044=home # f11 => Home
 KEYBOARD_KEY_70045=end # f12 => End
```

### Example rules file `/etc/udev/hwdb.d/71-mouse-local.hwdb`
```bash
# === Evoluent vertical mouse ===
# (I'm disabling the 'back' mouse button)
evdev:input:b0003v1A7Cp0191e0110*
  KEYBOARD_KEY_90004=esc
  KEYBOARD_KEY_90006=esc
```


### Commands to load rules
```bash
# Make sure you figure out what eventXX should be for the chosen keyboard. Use `sudo evtest` to find out.
sudo systemd-hwdb update
sudo udevadm trigger /dev/input/event<XX>
```

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3Njg0MzcyNDgsLTE4NzU3NjY1MjQsLT
c4MTk2MjM4MywtMTEyMjY3NDYwMCwyODE1MTc1NDhdfQ==
-->