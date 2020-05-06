#!/bin/sh
# Can be used as postinstall PKG script to launch a Finder/System Events dialogue and run a locally stored script
# Useful as a simple way to alert a user if the bundled script requires sudo and/or user input at the Terminal
# DNA for XXX 5/6/20

osascript -e 'tell application "Finder" to display dialog "Dialogue Goes Here"'

sudo open /private/tmp/localscript.command

exit