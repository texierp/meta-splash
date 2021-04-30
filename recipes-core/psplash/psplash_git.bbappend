FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://bar.png \
    file://lafon.png \
    file://psplash-colors.h \
"

SPLASH_IMAGES = "file://lafon.png;outsuffix=default"

do_configure_append () {
    cd ${S}
    cp ../psplash-colors.h ./psplash-colors.h
    cp ../bar.png ./psplash-bar.png
    ./make-image-header.sh ./psplash-bar.png BAR
}
