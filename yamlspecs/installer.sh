#!/bin/bash
# Install the NVIDIA driver with the run file

THISDIR=$(dirname $(realpath $0))
RUNFILE=$(ls $THISDIR/NVIDIA-Linux-x86_64*run)
NVIDIA_INSTALLER=$(which nvidia-installer 2>/dev/null)

INSTALL_ARGS="--silent  --no-nouveau-check  --no-install-libglvnd"

NOUVEAU=1

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

if [ "$NVIDIA_INSTALLER" == "" ]; then
   echo "NVIDIA not installed ... installing "
   chmod +x $RUNFILE
   $RUNFILE $INSTALL_ARGS 2>&1 | tee /var/log/nvidia-installer-run.log
fi
