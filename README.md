# adding

to add this repo to your gentoo installation, append the following to your `/etc/portage/repos.conf/eselect-repo.conf`:

```
[things]
location = /var/db/repos/things
sync-type = git
sync-uri = https://github.com/tetrahydrocannabin0l/things.git
```

then do `emaint -a sync`
