## Encrypt with GPG
### Using a passphrase (symmetric, no key)
```bash
# Non-interactive
gpg --symmetric --batch --yes --passphrase $PWD $PLAINFILE
# Interactive
gpg -c $PLAINFILE # Creates $PLAINFILE.gpg
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDQ5NTY5NzQ4XX0=
-->