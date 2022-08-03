# Yet Another Gentoo Overlay

## Packages

1. [net-vpn/pan-globalprotect-okta](https://github.com/arthepsy/pan-globalprotect-okta)

## How to add?

```
$ cat <<EOF >> /etc/portage/repos.conf

[arbitrary-dev]
location = /var/db/repos/arbitrary-dev
sync-type = git
sync-uri = https://github.com/arbitrary-dev/gentoo-overlay.git
EOF
```

## How to test?

```
# ebuild pan-globalprotect-okta-20220708.ebuild clean prepare
```

## See also

1. [Basics of writing Ebuilds](https://wiki.gentoo.org/wiki/Basic_guide_to_write_Gentoo_Ebuilds)
1. [Patching](https://wiki.gentoo.org/wiki/Patches)
