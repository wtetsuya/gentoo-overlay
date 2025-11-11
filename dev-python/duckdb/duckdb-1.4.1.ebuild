# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=standalone
DISTUTILS_EXT=1
PYTHON_COMPAT=( python3_{12..14} )

inherit distutils-r1 pypi

DESCRIPTION="A Fast, In-Process, Portable, Open Source, Analytical Database System"
HOMEPAGE="
	https://pypi.org/project/duckdb/
"

SRC_URI="$(pypi_sdist_url --no-normalize "${PN}") -> py-${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPENDS="
	>=dev-db/duckdb-1.4.1
	dev-python/pybind11"

RDEPEND="
"
BDEPEND="
	dev-python/scikit-build-core
	dev-build/cmake
	dev-build/ninja
"

EPYTEST_PLUGINS=()
distutils_enable_tests pytest
