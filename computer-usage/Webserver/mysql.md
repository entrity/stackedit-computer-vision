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
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjkxNTc2MjI4LDE0NDI1MTU3MjldfQ==
-->