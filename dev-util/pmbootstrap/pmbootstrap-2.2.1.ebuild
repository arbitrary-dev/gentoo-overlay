# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

PYTHON_COMPAT=( python3_{10..12} )

DISTUTILS_SINGLE_IMPL=1
inherit distutils-r1 linux-info

DESCRIPTION="Helper tool for developing and building postmarketOS"
HOMEPAGE="https://wiki.postmarketos.org/wiki/Pmbootstrap"
SRC_URI=""https://gitlab.com/postmarketOS/pmbootstrap/-/archive/${PV}/${P}.tar.gz

LICENSE="GPL-3"
SLOT="0"

# According to upstream README either x86, amd64 or arm64 are required. I
# wrote down all other arches because if I just did -* without adding x86 and
# arm64 keywords it would seem like the package only works on amd64, but I can't
# keyword x86 and arm64 because I can't test these.
KEYWORDS="-alpha ~amd64 -arm -hppa -ia64 -ppc -ppc64 -riscv -sparc"
# Tests are disabled because they require the pmaports repository (containing
# postmarketOS APKBUILDs) to be cloned at runtime.
RESTRICT="mirror test"

DEPEND="${PYTHON_DEPS}"

pkg_pretend() {
	if kernel_is -lt 3 17 0; then
		eerror "pmbootstrap requires Linux 3.17 or greater."
		die
	fi
}

# Without this, emerge errors with an "EPYTHON not set" error.
pkg_setup() {
	python-single-r1_pkg_setup
}
