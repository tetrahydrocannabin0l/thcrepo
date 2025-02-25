# adding

to add this repo to your gentoo installation, append the following to your `/etc/portage/repos.conf/eselect-repo.conf`:

```
[thc]
location = /var/db/repos/thc
sync-type = git
sync-uri = https://github.com/tetrahydrocannabin0l/thcrepo.git
```

then do `emaint -a sync`

you can also `rm -rf /var/db/repos/thc/README.md` if you want.
