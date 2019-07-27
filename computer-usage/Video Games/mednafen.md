# Linux console emulator

Disallow network access and run emulator.
`unshare -rn mednafen <{zip|rom}file> [-sound 0]`

## Config mednafen

Override keys, joystick by creating custom config files at `$HOME/.mednafen`, e.g. `$HOME/.mednafen/nes.cfg`

### Set keys

I like to use `mednaffe`, then go to **System > Input** and 
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTgxNzIwODU4Ml19
-->