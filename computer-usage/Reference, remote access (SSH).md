## SSH

- `-X`  Enables X11 (display) forwarding. (But this allows an attacker to listen to my keystrokes.)
- create a pipe between machines

## SSHFS

```bash
# Mount a remote directory:
sshfs ${user}@${host}:${path} $mydir
# "path" can be absolute or relative to the user's $HOME
# "user@host" can be an alias from .ssh/config
# "mydir" should be an empty local directory

# Unmount the directory:
fusermount -u $mydir 
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbNTU5NjA3ODU5LC04NDIxMjMzMzgsMTcyMT
I5MDgzMF19
-->

## FTP

```bash
python -m pyftpdlib [--help]
```
