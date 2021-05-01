FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://bar.png \
    file://splash.png \
    file://psplash-colors.h \
"

SPLASH_IMAGES = "file://splash.png;outsuffix=default"

do_configure_append () {
    cd ${S}
    cp ../psplash-colors.h ./psplash-colors.h
    cp ../bar.png ./psplash-bar.png
    ./make-image-header.sh ./psplash-bar.png BAR
}
