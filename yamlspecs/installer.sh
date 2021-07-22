#!/bin/bash
# Install the NVIDIA driver with the run file

VERSION=%VERSION%
THISDIR=$(dirname $(realpath $0))
RUNFILE=$(ls $THISDIR/NVIDIA-Linux-x86_64*run)
NVIDIA_SMI=/usr/bin/nvidia-smi
INSTALLED_VERSION=/etc/nvidia-driver-version
INSTALL_ARGS="--silent  --no-nouveau-check  --no-install-libglvnd"

NOUVEAU=1

uninstall_if_old() {
# unistall the driver if the file $INSTALLED_VERSION is incorrect 
# or file does not exist
        if [ -f $INSTALLED_VERSION ] && [ $(cat $INSTALLED_VERSION) == "$VERSION" ]; then return; fi
        $RUNFILE --silent --uninstall
}

nouveau_check () {
# Set NOUVEAU to 0 if the module is not loaded 
	s=$(lsmod | grep nouveau)
	if [ $? != 0 ]; then
		NOUVEAU=0
	fi
}


nouveau_check

if [ $NOUVEAU == 1 ]; then
	echo "Nouveau still present ... attempting to rmmod it"
        rmmod nouveau
        nouveau_check
        if [$NOUVEAU == 1 ]; then
             echo "ERROR: Cannot remove nouveau driver, install of nvidia cannot proceeed"
             exit -1
        fi
fi

uninstall_if_old

NVIDIA_INSTALLER=$(which nvidia-installer 2>/dev/null)

if [ "$NVIDIA_INSTALLER" == "" ]; then
   echo "NVIDIA not installed ... installing "
   chmod +x $RUNFILE
   $RUNFILE $INSTALL_ARGS 2>&1 | tee /var/log/nvidia-installer-run.log
   echo -n $VERSION > $INSTALLED_VERSION 
fi

# Create /dev/nvidia* by running nvidia-smi, if it exists
if [ -x $NVIDIA_SMI ]; then
   $NVIDIA_SMI
fi 
