#!/bin/bash
#VirtualBox for XXX
#This package is too big for Jamf, so here we are
#Installs VirtualBox and imports a VM
#This script expects to be executed from a directory containing a VirtualBox installer PKG and a VM from https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/
#Rename PKG and ZIP accordingly 
#DNA for XXX 9/15/20

BASEDIR=$(dirname "$0")

cd "$BASEDIR"

echo "Please enter your admin password below. This process can take a while."

if [ -e VirtualBox.pkg ]
        then
sudo installer -pkg ./VirtualBox.pkg -target /
        else
echo "Can't find VirtualBox installer!" && exit
fi

if [ -e MSEdge-W10.zip ]
        then
unzip MSEdge-W10.zip && mv MSEdge-W10-AIX.ova /private/tmp/
        else
echo "File not found!" && exit
fi

if [ -e /private/tmp/MSEdge-W10-AIX.ova ]
        then
vboxmanage import /private/tmp/MSEdge-W10-AIX.ova
        else
echo "VM import failed!"
fi

open /Applications/VirtualBox.app/

exit