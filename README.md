# Yet Another Gentoo Overlay

## Packages

- [media-gfx/opentoonz](https://github.com/opentoonz/opentoonz)
  - `v1.7.1` ebuild
- [net-vpn/pan-globalprotect-okta](https://github.com/arthepsy/pan-globalprotect-okta)
- [www-client/luakit](https://github.com/luakit/luakit)
  - added `~x86` keyword

## How to add?

```
# cat <<EOF >>/etc/portage/repos.conf

[arbitrary-dev]
location = /var/db/repos/arbitrary-dev
sync-type = git
sync-uri = https://github.com/arbitrary-dev/gentoo-overlay.git
EOF
```

## How to test?

```
# ebuild *.ebuild manifest clean prepare
```

## See also

1. [Basics of writing Ebuilds](https://wiki.gentoo.org/wiki/Basic_guide_to_write_Gentoo_Ebuilds)
1. [Ebuild writing](https://devmanual.gentoo.org/ebuild-writing)
1. [Patching](https://wiki.gentoo.org/wiki/Patches)
