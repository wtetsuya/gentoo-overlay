# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="D2 is a modern diagram scripting language that turns text to diagrams."
HOMEPAGE="https://d2lang.com/"
SRC_URI="https://github.com/terrastruct/d2/releases/download/v${PV}/d2-v${PV}-linux-amd64.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}-v${PV}"

src_compile() { :; }

src_install() {
	dobin bin/d2
	doman man/d2.1
}

