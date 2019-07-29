# Web VM

[https://manage.buyvm.net/vserver/56757](https://manage.buyvm.net/vserver/56757)

## `apt` packages
```
sudo apt install vim python3 python-pip3 mariadb-server node less apache2 nodejs
```

## Misc setup

```bash
# Show all locales
locale -a
# Generate desired locale (if not listed above)
locale-gen en_US.UTF-8
# Set default locale
echo "LANG=\"en_US.UTF-8\"" >> /etc/default/locale
```

## Firewall
### `ufw`
### `iptables`

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3MTM0Njc3NjldfQ==
-->