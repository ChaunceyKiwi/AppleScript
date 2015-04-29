on open folderList
	repeat with aFolder in folderList
		if kind of (info for aFolder) is "Folder" then
			renameStuffIn(aFolder)
		end if
	end repeat
end open

on renameStuffIn(theFolder)
	set ix to 0
	tell application "Finder"
		set folderName to name of theFolder
		set allItems to (get every item of theFolder)
		repeat with thisItem in allItems
			set ix to ix + 1
			set newName to folderName & ix
			set name of thisItem to newName
		end repeat
	end tell
end renameStuffIn