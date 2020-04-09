SUMMARY = "Dump ACPI tables to a file"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"

do_configure[depends] += "virtual/kernel:do_shared_workdir"
do_populate_lic[depends] += "virtual/kernel:do_patch"

inherit linux-kernel-base kernelsrc

EXTRA_OEMAKE += "-C ${S}/tools/power/acpi/tools/acpidump CC='${CC}' LD='${CCLD}' CROSS_COMPILE=${TARGET_PREFIX} DESTDIR=${D}"

do_compile() {
	oe_runmake all
}

do_install() {
	oe_runmake install
}

PACKAGE_ARCH = "${MACHINE_ARCH}"
