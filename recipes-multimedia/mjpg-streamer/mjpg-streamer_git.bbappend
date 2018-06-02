#
# systemd unit file for mjpg-streamer
#

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append += "file://mjpg_streamer.service"

inherit systemd

SYSTEMD_SERVICE_${PN} = "mjpg_streamer.service"

do_install_append() {
	# install systemd unit
	install -d ${D}${systemd_unitdir}/system/
	install -m 0644 ${WORKDIR}/mjpg_streamer.service ${D}${systemd_unitdir}/system/
}

FILES_${PN} += "${systemd_unitdir}/system/mjpg_streamer.service"
