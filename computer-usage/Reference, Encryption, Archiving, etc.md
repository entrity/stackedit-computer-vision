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

### Mount encrypted drive

1. `vgdisplay` will show the name of the encrypted volume group.
For me, `mint`, and `VG UUID` is `hnbpcK-DK3D-4c0m-boEk-pAmC-jeWh-XXoVzL`
```
cryptsetyp luksOpen /dev/sda3 mint # https://askubuntu.com/a/63598/117018
mkdir /media/mydev
lvscan # Then see something like /dev/mint/root # https://askubuntu.com/a/485114/117018
vgchange -ay # activate all of the volumes
mount /dev/mapper/mint-root /media/mydev
```

### Fixing broken boot

*Boot used to ask me for disk-encryption password before doing anything graphical, before even letting me choose an OS to boot. Now it just boots to my unencrypted partition. Here's my solution:*

1. Decrypt and mount the work partition, according to the instructions in the **Encrypted boot** section of this document.
2. Copy the contents of the grub file from the work partition (`/media/mydev/etc/default/grub`) to the personal partition (`/etc/default/grub`).
    * `GRUB_ENABLE_CRYPTODISK=y`
    * `GRUB_CMDLINE_LINUX="cryptdevice=/dev/sda3:sda3_crypt`
3. Run `update-grub`
4. Reboot
