EAPI=8

PYTHON_COMPAT=( python3_{9,10,11} )

inherit git-r3 python-r1

DESCRIPTION="PaloAlto Networks GlobalProtect VPN (integrated with OKTA) command-line client"
HOMEPAGE="https://github.com/arthepsy/pan-globalprotect-okta"

EGIT_REPO_URI="https://github.com/arthepsy/pan-globalprotect-okta.git"
EGIT_COMMIT="a0b2ba6da7e19f187b536cfeefe6f9be44211d7f"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/pyotp[${PYTHON_USEDEP}]
	sys-apps/openrc
	net-vpn/openconnect
	net-dns/openresolv
"

PATCHES=(
	"${FILESDIR}"/${P}-execute-openconnect-without-sudo.patch
)

src_install() {
	python_foreach_impl python_newscript "gp-okta.py" "${PN}"

	insinto "/etc"
	newins "gp-okta.conf" "${PN}.conf"

	newinitd "${FILESDIR}/init" "${PN}"
}

pkg_postinst() {
	elog "You may try adding --no-dtls to /etc/${PN}.conf (openconnect_args) to disable ESP, if it causes issues."
	elog "Or --csd-wrapper=/usr/libexec/openconnect/hipreport.sh for whatever reason."
}
