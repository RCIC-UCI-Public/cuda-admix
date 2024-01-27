#!/bin/bash
# Install the GDRCopy driver based on NVIDIA GPUDirect RDMA technology.

# versions for gdrcopy, cuda and kernel
VERSION=%VERSION%
CUDA=%CUDA_VERSION%
KVERSION=$(uname -r)

# module *.ko fiels will be generated in gdrcopy install directory in src/gdrdrv
THISDIR=$(dirname $(realpath $0))
DRVDIR=$THISDIR/src/gdrdrv

# current gdrdrv driver, cuda and kernel versions are recorded here
INSTALLED_VERSION=/etc/gdrdrv-driver-version

check_for_install() {
    # Determine if we need to uninstall/install
    NEED_UNINSTALL=0
    NEED_INSTALL=1
    if [ -f $INSTALLED_VERSION ]; then
       INST_VERSION=$(cat $INSTALLED_VERSION | head -1)
       INST_KVERSION=$(cat $INSTALLED_VERSION | tail -1)
       if [ "$INST_VERSION" != "$VERSION $CUDA" ] || [ "$INST_KVERSION" != "$KVERSION" ]; then
          NEED_UNINSTALL=1
       fi
       if [ "$INST_VERSION" == "$VERSION $CUDA " ] && [ "$INST_KVERSION" == "$KVERSION" ]; then
          NEED_INSTALL=0
       fi
    fi
}

uninstall_old() {
    # unistall the driver if the file $INSTALLED_VERSION is incorrect 
    # or file does not exist
    if [ $NEED_UNINSTALL -eq 0 ]; then return; fi

    # remove driver
    grep gdrdrv /proc/devices >/dev/null && /sbin/rmmod gdrdrv

    # remove old inodes 
    if [ -e /dev/gdrdrv ]; then
        /bin/rm /dev/gdrdrv
    fi
}

install_new() {
    # istall the driver if driver, cuda, or kernel version have changed 
    if [ $NEED_INSTALL -ne 0 ]; then
        echo "gdrdrv is not installed ... installing "
	(cd $DRVDIR; make install 2>&1 > /var/log/gdrdrv-installer-run.log)

        echo $VERSION $CUDA > $INSTALLED_VERSION 
        echo $KVERSION >> $INSTALLED_VERSION
    fi
}

activate_driver() {
    modprobe gdrdrv

    # create device inodes
    major=`fgrep gdrdrv /proc/devices | cut -b 1-4`
    # remove old inodes just in case
    if [ -e /dev/gdrdrv ]; then
        sudo rm /dev/gdrdrv
    fi
    mknod /dev/gdrdrv c $major 0
    chmod a+w+r /dev/gdrdrv
}

check_for_install
uninstall_old
install_new
activate_Driver
