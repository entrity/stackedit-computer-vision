## Set up

```bash
apt install mysql-server
```
### Create users
```sql
update mysql.user set authentication_string = password('newpw') where user = 'root';
create user 'duckofdoom'@localhost identified by 'usrpw';
create schema duckofdoom character set = 'utf8';
grant all on duckofdoom.* to 'duckofdoom'@'localhost' with grant option;
flush privileges;
```
### `.mylogin.cnf`

Create a file with one or more identities for automatic login. I find this useful for automatic backups.
```bash
mysql_config_editor set --user=<user> --password --host=<host>
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

- Try starting `mysqld_safe`.
- Try looking for `.err` file in `/var/lib/mysql`

> I'll likely have to boot your MySQL server in innodb_recovery mode and extract the database.

```
mkdir /var/run/mysqld && chown mysql:mysql /var/run/mysqld && mysqld_safe --skip-grant-tables &
```
---
**Error**
> ERROR 1805 (HY000): Column count of mysql.user is wrong. Expected 45, found 48. The table is probably corrupted

**Resolution**
```sql
alter table user drop column is_role;
alter table user drop column default_role;
alter table user drop column max_statement_time;
alter table user modify max_user_connections int(11) unsigned NOT NULL DEFAULT '0';
flush privileges;
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNDU3NTIwMTcsLTU1Mjk0ODAzMSwxMT
UzNTU2MjIyLC0xMTk0MDUxMjY4LC0xNzQ2ODgyNTcyLC0yMTQ2
MDY1MTg2LDI5MTU3NjIyOCwxNDQyNTE1NzI5XX0=
-->