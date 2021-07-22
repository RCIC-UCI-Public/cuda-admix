#! /bin/bash
#
# remove requirement for osgi 
/usr/lib/rpm/find-requires $* | sed -e '/osgi\.*/d' | sed -e '/^[[:space:]]*$/d' | sed -e '/^#/d' |sed -e '/GLIBC/d' | sed -e '/aarch/d' | sed -e '/ld64.so.2/d'
