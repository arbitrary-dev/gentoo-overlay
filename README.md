# Yet Another Gentoo Overlay

## How to add?

```
$ cat <<EOF >> /etc/portage/repos.conf

[arbitrary-dev]
location = /var/db/repos/arbitrary-dev
sync-type = git
sync-uri = https://github.com/arbitrary-dev/gentoo-overlay.git
EOF
```

## Packages

1. `net-vpn/pan-globalprotect-okta`
   - Init script added
   - Fixed new okta format issue [#34](https://github.com/arthepsy/pan-globalprotect-okta/pull/34)

## See also

1. [Basics of writing Ebuilds](https://wiki.gentoo.org/wiki/Basic_guide_to_write_Gentoo_Ebuilds)
1. [Patching](https://wiki.gentoo.org/wiki/Patches)
