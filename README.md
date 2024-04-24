# Yet Another Gentoo Overlay

## Packages

- [app-text/pandoc-cli](app-text/pandoc-cli)
  - `v3.1.13` ebuild
  - may [require](https://github.com/gentoo-haskell/gentoo-haskell/issues/1469) `dev-haskell/pandoc` re-emerge
- [dev-haskell/haskell-language-server](dev-haskell/haskell-language-server)
  - `v2.7.0.0` ebuild
- [dev-util/pmbootstrap](dev-util/pmbootstrap)
  - `v2.2.1` ebuild
- [games-rpg/freedink](games-rpg/freedink)
  - workaround for [segfault](https://bugs.launchpad.net/ubuntu/+source/freedink/+bug/2009960)
  - fix for ["ERROR: Audio music decoder: no Ogg support"](https://bugzilla.redhat.com/show_bug.cgi?id=1782557)
- [media-gfx/gimp](media-gfx/gimp)
  - `pdf` opt-out USE-flag
- [media-gfx/opentoonz](media-gfx/opentoonz)
  - `v1.7.1` ebuild
- [net-vpn/pan-globalprotect-okta](net-vpn/pan-globalprotect-okta)
- [x11-libs/goffice](x11-libs/goffice)
  - `eps` opt-out USE-flag

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
