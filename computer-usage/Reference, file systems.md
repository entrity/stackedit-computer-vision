# Samba shares
List shares
`smbclient -L <host> [-U <user> [password]]`
Mount (one time)
`mount -t cifs //<host>[/<remotedir>] <abspathlocaldir>`
E.g.
`sudo mount -t cifs //wdmycloud.local/mar /home/markham/mnt -o username=mar,uid=1000,nounix`
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTQ4ODE1MjUyNiwtNTU3NDAzMTkxXX0=
-->