#
# systemd unit file for mjpg-streamer
#

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append += "file://mjpg_streamer.service"

inherit systemd

SYSTEMD_SERVICE_${PN} = "mjpg_streamer.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"

do_install_append() {
	# install systemd unit
	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
		install -d ${D}${systemd_unitdir}/system/
		install -m 0644 ${WORKDIR}/mjpg_streamer.service ${D}${systemd_unitdir}/system/
	fi
}

FILES_${PN} += "${systemd_unitdir}/system/mjpg_streamer.service"
