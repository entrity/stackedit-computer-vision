# Encryption, Archiving, Etc.

## Encrypt a file with GPG
### Using a passphrase (symmetric, no key)
```bash
# Non-interactive
gpg --symmetric --batch --yes --passphrase $PWD $PLAINFILE
# Interactive
gpg -c $PLAINFILE # Creates $PLAINFILE.gpg
# '-c' is an alias for '--symmetric'
```

## Encrypt a file with openssl
### Using a passphrase (symmetric, no key)
```bash
openssl enc -aes-256-cbc -in "$SRC" -out "$DST" -salt -k "$KEY"
# Alternatively, you can put the encryption key as the first line of file $KEYFILE and use this:
openssl enc -aes-256-cbc -in "$SRC" -out "$DST" -salt -kfile "$KEYFILE"
# To decrypt:
openssl enc -d -aes-256-cbc -in "$SRC" -out "$DST" -salt -k "$KEY"
```

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTMxMzY0MTU1OF19
-->