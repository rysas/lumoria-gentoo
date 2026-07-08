# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson vala xdg

DESCRIPTION="A Linux installer and launcher for Final Fantasy XI"
HOMEPAGE="https://github.com/Windower/Lumoria"
SRC_URI="https://github.com/Windower/Lumoria/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/Lumoria-${PV}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-arch/libarchive
	dev-libs/json-glib
	dev-libs/libgee:0.8
	dev-libs/libgit2-glib
	dev-libs/libmanette
	dev-libs/libmspack
	dev-libs/libportal[gtk]
	dev-libs/libxml2
	gui-libs/gtk:4
	gui-libs/libadwaita
	gui-libs/vte:2.91-gtk4
	net-libs/libsoup:3.0
	x11-themes/hicolor-icon-theme
"
DEPEND="${RDEPEND}"
BDEPEND="
	$(vala_depend)
	dev-build/cmake
	dev-libs/appstream
	dev-util/desktop-file-utils
	virtual/pkgconfig
"

src_prepare() {
	default
	vala_setup
}
