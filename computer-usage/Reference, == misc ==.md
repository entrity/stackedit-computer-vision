## Quick keystroke logger

```bash
xinput --list # then get id of keyboard
xinput --test $kybd_id > keystrokes.log & # send job to bg to escape notice
```
This works for keystrokes on any window, not just the terminal in question.

To decode the logfile:

```bash
while read -r line; do
	grep -oP '[a-zA-Z\s]+' <<< "$line" | tr '\n' '\0'
	n=$(grep -oP '\d+' <<< "$line")
	xmodmap -pke | grep -P "keycode\s+${n} =" | sed 's/keycode\s\+[0-9]\+ = //' || echo $n 
done < keystrokes.log
```

## Disable network access for a process

`unshare -n <program> ...`
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTYzMzAzNzYwM119
-->