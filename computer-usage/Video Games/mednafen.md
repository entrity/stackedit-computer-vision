# Linux console emulator

Disallow network access and run emulator.
`unshare -rn mednafen <{zip|rom}file> [-sound 0]`

## Config mednafen

Override keys, joystick by creating custom config files at `$HOME/.mednafen`, e.g. `$HOME/.mednafen/nes.cfg`

### Set keys

I like to use `mednaffe`, then go to **System > Input** and configure the keys by pressing them. Afterward, `mednaffe` will update the controls in `$HOME/.mednafen/mednafen-09x.cfg`.

To back them up (into an override file), I've run `grep ';nes, Port ., Gamepad' mednafen-09x.cfg -A2 > nes.cfg`

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5MjkyMDkzNTNdfQ==
-->