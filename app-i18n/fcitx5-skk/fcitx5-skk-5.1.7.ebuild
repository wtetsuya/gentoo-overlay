# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="fcitx5-skk is an input method engine for Fcitx5, which uses libskk as its backend."
HOMEPAGE="https://github.com/fcitx/fcitx5-skk"
SRC_URI="https://github.com/fcitx/fcitx5-skk/archive/refs/tags/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	app-i18n/libskk
	>app-i18n/fcitx-5.1.13
	app-i18n/fcitx-qt:5
	app-i18n/skk-jisyo
	"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-build/cmake
	"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
