## Test mailers

You can preview emails with [`ActionMailer::Preview`](https://github.com/actionverb/files-rails#testing-mails). See [also](https://stackoverflow.com/a/42487750/507721).

At Files.com, we use https://github.com/actionverb/files-rails#testing-mails. Thjis solution is probably based on the gem [letter opener](https://github.com/ryanb/letter_opener)

Other "mail interceptors" exist.

## Misc

- mini_record - allows for automatic migrations (no db migrations files)
- spork - holds rails process, ready to spin up a test or server or console quickly
- Grape API - api framework
- Swagger (swagger-grape) - automatically document api. can be used in conjunction with grape

## Ruby

Ruby environment managers:

- rbenv
- rvm