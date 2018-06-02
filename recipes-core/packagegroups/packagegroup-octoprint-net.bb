DESCRIPTION = "Net packages for Octoprint image"
LICENSE = "MIT"

inherit packagegroup

RDEPENDS_${PN} = "\
    wireless-tools \
    wpa-supplicant \
    iw \
    ethtool \
    iputils \
    net-tools \
    avahi-daemon \
    avahi-utils \
    openvpn \
    ntp \
    "
