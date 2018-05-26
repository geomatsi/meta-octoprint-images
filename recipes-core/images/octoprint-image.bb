SUMMARY = "Octoprint image"

LICENSE = "MIT"

IMAGE_INSTALL_append = "packagegroup-octoprint-net packagegroup-octoprint-misc packagegroup-octoprint"
IMAGE_FEATURES += "tools-debug ssh-server-dropbear"

inherit core-image
