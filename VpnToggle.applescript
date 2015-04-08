tell application "System Events"
	tell current location of network preferences
		set myConnection to the service "myVPN"
		if current configuration of myConnection is not connected then
			connect myConnection
		else
			disconnect myConnection
		end if
	end tell
end tell