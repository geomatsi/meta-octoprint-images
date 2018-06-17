#
#
#

# workaround for PACKAGE_CLASSES="package_rpm":
# do not 'own' directories to avoid conflicts with other packages
DIRFILES = "1"

RDEPENDS_${PN} += " \
		python-pillow \
		"
