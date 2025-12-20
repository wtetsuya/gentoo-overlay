# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="HackGen is a composite font of Hack and GenJyuu-Gothic."
HOMEPAGE="https://github.com/yuru7/HackGen"
SRC_URI="https://github.com/yuru7/HackGen/releases/download/v2.10.0/${PN}_v${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"

src_unpack() {
	default

	local dirs=( "${WORKDIR}"/* )
	[[ ${#dirs[@]} -eq 1 && -d ${dirs[0]} ]] || die "unexpected zip layout"

	S=${dirs[0]}
}

FONT_CONF=( "${FILESDIR}"/67-${PN}.conf )
FONT_SUFFIX="ttf"
