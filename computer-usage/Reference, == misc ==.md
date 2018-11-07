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

## Quick webserver

### Python

```bash
python2 -m SimpleHTTPServer # Python 2
python3 -m http.server      # Python 3
```
Starts a file-serving webserver in the current directory bound to `0.0.0.0:8000`

### Netcat
```bash
{ echo -ne "HTTP/1.0 200 OK\r\n\r\n"; cat some.file; } | nc -l -p 8080
{ echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <some.file)\r\n\r\n"; cat some.file; } | nc -l -p 8080
```
Serves up just the specified file(s).
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQxNDg5NTY4OCwtNjMzMDM3NjAzXX0=
-->