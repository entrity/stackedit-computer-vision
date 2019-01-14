# SSH

- `-X`  Enables X11 (display) forwarding. (But this allows an attacker to listen to my keystrokes.)
- create a pipe between machines

## SSHFS

```bash
# Mount a remote directory:
sshfs user@host:path directory
# The path can be absolute or relative to the user's $HOME
# The "user@host" can be an alias from .ssh/config
#

# Unmount the directory:
fusermount -u 
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTg3ODA1MjU5NywtODQyMTIzMzM4LDE3Mj
EyOTA4MzBdfQ==
-->