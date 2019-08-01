```bash
apt install mysql-server
```

```sql
update mysql.user set authentication_string = password('newpw') where user = 'root';
create user 'duckofdoom'@localhost identified by 'usrpw';
create schema duckofdoom character set = 'utf8';
grant all on duckofdoom.* to 'duckofdoom'@'localhost' with grant option;
flush privileges;
```

## Troubleshooting

```
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: mysql.service: Service hold-off time over, scheduling restart.
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: mysql.service: Scheduled restart job, restart counter is at 5.
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: Stopped MySQL Community Server.
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: mysql.service: Start request repeated too quickly.
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: mysql.service: Failed with result 'exit-code'.
Aug 01 15:57:12 server1.markhamanderson.com systemd[1]: Failed to start MySQL Community Server.
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIxNDYwNjUxODYsMjkxNTc2MjI4LDE0ND
I1MTU3MjldfQ==
-->