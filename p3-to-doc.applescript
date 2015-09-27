#!/usr/bin/env osascript
-- Pages 3:
on run theFilename
	set theFile to POSIX file theFilename
	tell application "/Applications/iWork '08/Pages.app"
		open theFile
		set theFront to front document
		set n to name of theFront
		set baseName to (characters 1 thru -7 of n) as string
		set docName to baseName & ".docx"
		-- Get folder that dropped file exists in.
		tell application "Finder"
			set sourceFolder to (container of (theFile as alias)) as Unicode text
		end tell -- Finder
		set dest to sourceFolder & docName
		
		save front document as "SLDocumentTypeMSWord" in dest
		close front document
	end tell
end run
