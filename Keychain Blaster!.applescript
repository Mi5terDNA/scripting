(*

This script will delete all user Keychain preferences to alleviate issues caused by them!

BLAST OFF!


SCRIPTING BY:

[DNA@XXX.edu]

*)

tell application "Finder"
	display dialog "This will delete all Keychain preferences!  You may have to re-enter previously saved passwords!"
	do shell script "rm -r ~/Library/Keychains/*"
	display dialog "Hang in there, this Macintosh is going to restart"
	
	restart
	
	
	
end tell