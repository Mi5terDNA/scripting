#!/bin/sh
## postinstall
## Installs Crowdstrike Falcon PKG from /tmp/ and registers license
## DNA 2/21/20


sudo installer -verboseR -package "/private/tmp/FalconSensorMacOS.pkg" -target / && sudo /Library/CS/falconctl license XXX-XX

exit
