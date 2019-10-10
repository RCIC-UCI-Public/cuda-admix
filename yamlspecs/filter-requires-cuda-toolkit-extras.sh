#! /bin/bash
#
# remove the specific requirement of specialized versions of libcufft, libcurand.  
# Other choice would be that the cuda-toolkit provides these specifically.
/usr/lib/rpm/find-requires $* | grep -v -e 'libcufft.so.*(lib' -e 'libcurand.so.*(lib' 
