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

## Encrypt a file with 7zip
```bash
7za a -mhe=on -p$KEY "$DST" "$SRC"
# 'mhe' ensures that the listing of files within the archive is also encrypted
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTAyNTYyMDQyNl19
-->

## Full disk encryption, encrypted boot

### Encrypted boot

In `/etc/default/grub`, add:
```
GRUB_ENABLE_CRYPTODISK=y
```
Run `update-grub`
