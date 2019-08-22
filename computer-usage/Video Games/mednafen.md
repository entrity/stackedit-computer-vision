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

#### Gamepads

Use `jstest /dev/input/js<id>` to figure out which axis or which button identifier applies. Buttons are straightforward: 1,2,3,4... expressed as a zero-padded 8-digit hex humber. But specifying axes is different. They are also expressed as a zero-padded 8-digit hex number, and it seems the last byte of the number specifies which axis (provided by jstest) is referenced, but the next byte holds information on positive/negative: negative is `c0`; positive is `80`. E.g.:

```
gb.input.builtin.gamepad.up joystick 630f0eab74165481 0000c001
```

### Keysyms
[https://www.tcl.tk/man/tcl8.6/TkCmd/keysyms.htm](https://www.tcl.tk/man/tcl8.6/TkCmd/keysyms.htm)
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQ1MTgxODIyNSwtMTgxNzIxMjY5OV19
-->