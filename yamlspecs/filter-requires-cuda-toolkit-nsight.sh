#! /bin/bash
#
# remove requirement for osgi 
/usr/lib/rpm/find-requires $* | sed \
    -e '/libQt5\.*/d' \
    -e '/libQt6\.*/d' \
    -e '/osgi\.*/d' \
    -e '/^[[:space:]]*$/d' \
    -e '/^#/d' \
    -e '/GLIBC/d' \
    -e '/aarch/d' \
    -e '/ld64.so.2/d' \
    -e '/libGL.so()(64bit)/d' \
    -e '/libgcc_s.so.1(GCC_4.5.0)(64bit)/d'
