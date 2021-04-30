FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://splash.bmp \
    file://0001-board-atmel-common-disable-microchip-logo.patch \
    file://0002-board-sama5dd27_som1_ek-add-splashscreen-support.patch \
"

do_deploy_append() {
    install -Dm 0644 ${WORKDIR}/splash.bmp ${DEPLOYDIR}/splash.bmp
}
