# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Hyprland's idle daemon"
HOMEPAGE="https://github.com/hyprwm/hypridle"
SRC_URI="https://github.com/hyprwm/hypridle/archive/refs/tags/v${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-libs/wayland
	>dev-libs/hyprlang-0.6.0
	>gui-libs/hyprutils-0.2.0
	>dev-cpp/sdbus-c++-0.2.0
	"
RDEPEND="${DEPEND}"
BDEPEND=""

