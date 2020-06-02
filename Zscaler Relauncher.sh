#!/bin/sh
#Zscaler Relauncher
#Checks if Zscaler is running, if it's not, it will relaunch it
#Can be repurposed for any process
#wnetto for AIX 6/1/20


str1=$(wc -l /private/tmp/zscalercheck)
str2="       2 /private/tmp/zscalercheck"

echo "Checking for pre-existing temp file..."

if [ -e "/private/tmp/zscalercheck" ]
 then
rm /private/tmp/zscalercheck  && echo "Temp file deleted"
 else
echo "No temp file found, moving along..."
	fi

ps ax | grep /Applications/Zscaler/Zscaler.app/Contents/MacOS/Zscaler > /private/tmp/zscalercheck
if [ "$str1" == "$str2" ]
	then
echo "Zscaler is aready running"
	else
open --hide /Applications/Zscaler/Zscaler.app/
echo "Zscaler has been re-launched"
fi

exit


