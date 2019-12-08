```bash
openssl s_client -showcerts -connect the-server:443
```

```bash
trust list
```


## Certbot & letsencrypt.org

Install

```bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
```

```bash
sudo apt-get install certbot python-certbot-apache
sudo certbot --apache
```
