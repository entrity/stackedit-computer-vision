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

Which version of a rom should you use? Well, it looks as if Mame-0.139u1 works. (https://www.theoldcomputer.com/roms/index.php?folder=MAME/Mame-0.139)

## Configure controls

Run `mame` with no arguments. Then choose the menu **Configure Options > General Inputs > Player 1 Controls**
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTA2MDI2ODkyOSw2ODE3MzIyNzFdfQ==
-->