#!/bin/bash
#Hides Locations in Finder Sidebar in an effort to obfuscate the ability to use iOS devices as mass storage

#Finds current username and defines a variable
currentuser=`stat -f "%Su" /dev/console`

#Collapses Locations in Finder Sidebar — the worst possible solution

su "$currentuser" -c "defaults write com.apple.finder.plist SidebarDevicesSectionDisclosedState -bool NO"

#Restarts Finder

killAll Finder

echo "Finder Preferences set"

exit 0
