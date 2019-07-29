# MAME

Ubuntu repositories come with a mame.

## Run a ROM

Put a rom zip file `$FILE` in dir `$DIR`.
Start mame with any of the following

```bash
mame -rompath $DIR $FILE
mame -rompath $DIR $DIR/$FILE
mame -rompath $DIR $ROMNAME
```

Which version of a rom should you use? Well, it looks as if Mame-0.139u1 works. (www.theoldcomputer.com/roms/index.php?folder=MAME/Mame-0.139u1)

## Commands
- add coins <kbd>5</kbd>, <kbd>6</kbd>

## Configure controls

Run `mame` with no arguments. Then choose the menu **Configure Options > General Inputs > Player 1 Controls**

Or edit `$HOME/.mame/cfg/default.cfg`
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTc3ODE2NDU4NywtMzI1MzEwOTYyLDE0Mj
MzNTU5NTQsMTA2MDI2ODkyOSw2ODE3MzIyNzFdfQ==
-->