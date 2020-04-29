#!/bin/sh
#Kickoff Box.app's uninstaller
#DNA for XXX 3/16/20

if [ -e /Applications/Box.app ]
	then
sudo osascript -e 'quit app "Box"' && /Library/Application\ Support/Box/uninstall_box_drive
	else
echo "Box doesn't appear to be installed!"
	fi
	
exit
