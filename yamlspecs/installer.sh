#!/bin/bash
# Install the NVIDIA driver with the run file

VERSION=%VERSION%
KVERSION=$(uname -r)
THISDIR=$(dirname $(realpath $0))
RUNFILE=$(ls $THISDIR/NVIDIA-Linux-x86_64*run)
NVIDIA_SMI=/usr/bin/nvidia-smi
NVIDIA_SMI_ARGS="--persistence-mode=1"
INSTALLED_VERSION=/etc/nvidia-driver-version
INSTALL_ARGS="--silent  --no-nouveau-check  --no-install-libglvnd"

NOUVEAU=1


# Determine if we need to uninstall/install
NEED_UNINSTALL=0
NEED_INSTALL=1
if [ -f $INSTALLED_VERSION ]; then
   INST_VERSION=$(cat $INSTALLED_VERSION | head -1)
   INST_KVERSION=$(cat $INSTALLED_VERSION | tail -1)
   if [ "$INST_VERSION" != "$VERSION" ] || [ "$INST_KVERSION" != "$KVERSION" ]; then
      NEED_UNINSTALL=1
   fi
   if [ "$INST_VERSION" == "$VERSION" ] && [ "$INST_KVERSION" == "$KVERSION" ]; then
      NEED_INSTALL=0
   fi
fi

uninstall_if_old() {
# unistall the driver if the file $INSTALLED_VERSION is incorrect 
# or file does not exist
        if [ $NEED_UNINSTALL -eq 0 ]; then return; fi
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


if [ $NEED_INSTALL -ne 0 ]; then
   echo "NVIDIA not installed ... installing "
   chmod +x $RUNFILE
   $RUNFILE $INSTALL_ARGS 2>&1 | tee /var/log/nvidia-installer-run.log
   echo $VERSION > $INSTALLED_VERSION 
   echo $KVERSION >> $INSTALLED_VERSION
fi

# Create /dev/nvidia* by running nvidia-smi, if it exists
if [ -x $NVIDIA_SMI ]; then
   $NVIDIA_SMI $NVIDIA_SMI_ARGS
fi 
