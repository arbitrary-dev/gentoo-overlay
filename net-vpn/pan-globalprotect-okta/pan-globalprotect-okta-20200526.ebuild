EAPI=8

PYTHON_COMPAT=( python3_{8,9,10} )

inherit git-r3 python-r1

DESCRIPTION="PaloAlto Networks GlobalProtect VPN (integrated with OKTA) command-line client"
HOMEPAGE="https://github.com/arthepsy/pan-globalprotect-okta"

EGIT_REPO_URI="https://github.com/arthepsy/pan-globalprotect-okta.git"
EGIT_BRANCH="master"
EGIT_COMMIT="f88beb9d076c3371dc4697cea0ec3b7a85d169d5"

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

	# TODO: usage
	# Here you may try `--no-dtls` to disable ESP, if it causes issues.
	# Or `--csd-wrapper=/usr/libexec/openconnect/hipreport.sh` for whatever reason.
}
