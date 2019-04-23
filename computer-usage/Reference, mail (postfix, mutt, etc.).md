# Mail Reference

## Postfix

### Trigger executable

Pick a recipient email address (or email address pattern) which should trigger the executable.

1. Create script file to execute.
1. Set `+x` permissions on script file.
1. Include `!#` in script file.
1. Update `/etc/postfix/main.cf`
1. Update `/etc/postfix/master.cf`
1. Update `/etc/postfix/regex_filters` (arbitrary filename)
1. Update `/etc/postfix/recipient_access` (arbitrary filename)
1. Run `postmap <fname>` for whatever db's need to be built. (See below.)
1. `sudo postfix reload`

#### `main.cf`

1. Make sure that the domain in question is *not* supplied as `relayhost` because all emails to the `relayhost` domain(s) are to be relayed (forwarded?) elsewhere.
1. Maybe need to make sure that the email in question in *not* in the `alias_maps` or `alias_database`. (Run `postmap <fname>` to update the corresponding db files.)
1. Add (or update) the following to the `main.cf` file.

```
# main.cf
virtual_mailbox_domains=recipientdomain.com
virtual_mailbox_base = /var/mail
virtual_mailbox_maps = hash:/etc/postfix/vmail_mailbox
transport_maps = regexp:/etc/postfix/regex_filters
```
#### `vmail_mailbox`

Define the location of the mailbox for the email addresses in question. (This may be unnecessary because the emails sent to addresses used as triggers won't actually reach the recipient mailboxes.

The path in the second parameter is appended to `virtual_mailbox_base` from `main.cf`. It is convention to have the directory be the recipient's domain and the filename be the username of the recipient.

```
recipient@recipientdomain.com           arbitrary_dir/arbitrary_file
```

#### `regex_filters`

```
# line format:
# 1. regex for email recipient
# 2. name (arbitrary) of the trigger
# 3. I don't know. The examples just have 'dummy'
/recipient@recipientdomain.com/ mytrigger:dummy
```

#### `master.cf`

Add a line to `master.cf`:

```
# user : the user as whom the executable will run
# argv : the executable and its arguments
mytrigger unix     -       n       n       -
    -       pipe flags=R user=myuser argv=/home/myuser/myscript.sh ${sender} ${size
} ${recipient}
```
#### `recipient_access`

```
recipient@recipientdomain.com           OK
```

You may need to run `postmap recipient_access` afterward. This builds `recipient_access.db`.
