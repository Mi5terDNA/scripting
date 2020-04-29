#!/bin/sh

#Symantec KEXT Remover
#wnetto for AIX 4/16/20

if [ -e /Library/Extensions/SymXIPS.kext ]
then
	sudo rm -r /Library/Extensions/SymXIPS.kext
else
	echo "Symantec KEXT(s) not found!"
fi
