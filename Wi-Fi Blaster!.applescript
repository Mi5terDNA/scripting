(*

This script will delete the com.apple.network.eapolclient.configuration.plist file that typically prevents users from using XXX Secure

BLAST OFF!


SCRIPTING BY: 
[DNA@XXX.edu]

*)

tell application "Finder"
	display dialog "This will reset certain Wi-Fi preferences!  You may have to re-connect to frequently used networks!"
	do shell script "rm /Library/Preferences/SystemConfiguration/com.apple.network.eapolclient.configuration.plist" with administrator privileges
	display dialog "All done!  Try and connect to XXX Secure; you may have to provide your XXX credentials and your Macintosh Administrator password to connect.  Please call the Help-Desk if you need further assistance!"
	
	
	
	
	
end tell