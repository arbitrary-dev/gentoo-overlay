# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generates a references DB from .hie files"
HOMEPAGE="https://hackage.haskell.org/package/hiedb"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/algebraic-graphs-0.3:=[profile?]
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-lang/ghc-8.6:=[profile?] <dev-lang/ghc-9.9:=[profile?]
	dev-haskell/ghc-paths:=[profile?]
	>=dev-haskell/hie-compat-0.3:=[profile?] <dev-haskell/hie-compat-0.4:=[profile?]
	dev-haskell/lucid:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	>=dev-haskell/terminal-size-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		dev-haskell/temporary )
"
