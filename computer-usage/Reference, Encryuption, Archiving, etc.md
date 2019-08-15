# Encryption, Archiving, Etc.

## Encrypt a file with GPG
### Using a passphrase (symmetric, no key)
```bash
# Non-interactive
gpg --symmetric --batch --yes --passphrase $PWD $PLAINFILE
# Interactive
gpg -c $PLAINFILE # Creates $PLAINFILE.gpg
```

## Encrypt a file with openssl
### Using a passphrase (symmetric, no key)
```bash
openssl enc -aes-256-cbc -in "$SRC" -out "$DST" -salt -k "$KEY"
# Alternatively, you can put the encryption ke
openssl enc -aes-256-cbc -in "$SRC" -out "$DST" -salt -kfile "$KEYFILE"

```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQxNzA0NjM1OV19
-->