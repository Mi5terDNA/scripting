#!/bin/sh
#Removes tamper protection from Sophos install
#Don't forget to change the variable to your TP password
#DNA did the thing for X 2/21/20

pw=${123456789} 

if [ -e "/Library/Application\ Support/Sophos/saas/Installer.app/Contents/MacOS/tools/InstallationDeployer" ]
	then
sudo ./Library/Application\ Support/Sophos/saas/Installer.app/Contents/MacOS/tools/InstallationDeployer --remove --tamper_password "$pw"
	else
echo "Sophos tools don't appear to be installed!"
	fi
exit
