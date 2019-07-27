# Linux console emulator

Disallow network access and run emulator.
`unshare -rn mednafen <{zip|rom}file> [-sound 0]`

### General documentation
[https://mednafen.github.io/documentation/](https://mednafen.github.io/documentation/)

## Config mednafen

Override keys, joystick by creating custom config files at `$HOME/.mednafen`, e.g. `$HOME/.mednafen/nes.cfg`

### Set keys

I like to use `mednaffe`, then go to **System > Input** and configure the keys by pressing them. Afterward, `mednaffe` will update the controls in `$HOME/.mednafen/mednafen-09x.cfg`.

To back them up (into an override file), I've run `grep ';nes, Port ., Gamepad' mednafen-09x.cfg -A2 > nes.cfg`

I have the most satisfying results with X-box controllers.

### Keysyms
[https://www.tcl.tk/man/tcl8.6/TkCmd/keysyms.htm](https://www.tcl.tk/man/tcl8.6/TkCmd/keysyms.htm)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE4MTcyMTI2OTldfQ==
-->