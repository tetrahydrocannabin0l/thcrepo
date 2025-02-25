EAPI=8

inherit desktop

DESCRIPTION="Qt based cross-platform GUI proxy configuration manager"
HOMEPAGE="https://github.com/MatsuriDayo/nekoray/"
LICENSE="BSD-3"
RESTRICT="strip"

SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	x11-libs/libxcb
	!net-proxy/nekoray
"
RELEASE_DATE="2024-12-12"

SRC_URI="https://github.com/MatsuriDayo/nekoray/releases/download/${PV}/nekoray-${PV}-${RELEASE_DATE}-linux64.zip"

S="${WORKDIR}/nekoray"

src_install() {
	insinto /opt/nekoray-bin
	doins -r *
	fperms +x /opt/nekoray-bin/nekobox /opt/nekoray-bin/nekobox_core /opt/nekoray-bin/launcher
	dosym /opt/nekoray-bin/nekobox /usr/bin/nekobox
	make_desktop_entry "nekobox -appdata" Nekobox nekobox Network
	doicon -s 512 nekobox.png
	doicon -s scalable nekobox.png
}
