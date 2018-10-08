## Quick keystroke logger

```bash
xinput --list # then get id of keyboard
xinput --test $kybd_id | grep -oP '\d+' > keystrokes.log & # send to bg to escape detection
```
This works for keystrokes on any window, not just the terminal in question.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTcyMDUzNzU2MV19
-->