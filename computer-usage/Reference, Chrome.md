## Ignore certificate errors

```bash
google-chrome --ignore-certificate-errors --profile-directory=Guest --user-data-dir=../tmp
```

I have to specify `--user-data-dir` if I am running another Chrome window. Without it, Chrome will say "Opening in existing browser session" and disregard my request to ignore certificate errors.

I've chosen to specify a different profile than my usual one just in case of visiting a bad site and actually hitting a MITM attack.
