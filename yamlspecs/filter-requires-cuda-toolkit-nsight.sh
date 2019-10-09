#! /bin/bash
#
# remove requirement for osgi 
/usr/lib/rpm/find-requires $* | sed -e '/osgi\.*/d' | sed -e '/^[[:space:]]*$/d' | sed -e '/^#/d'
