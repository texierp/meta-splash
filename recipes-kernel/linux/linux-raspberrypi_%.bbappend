FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_rpi = " \
    file://logo_lafon_clut224.ppm \
    file://0001-video-logo-add-Lafon-logo.patch \
"

do_configure_prepend() {
    if [ -e ${WORKDIR}/logo_lafon_clut224.ppm ]; then
        install -m 0644 ${WORKDIR}/logo_lafon_clut224.ppm ${S}/drivers/video/logo/logo_lafon_clut224.ppm
    fi
}

CMDLINE_append = " vt.global_cursor_default=0"
