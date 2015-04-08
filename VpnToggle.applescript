
tell application "System Events"
	tell current location of network preferences
		set myConnection to the service "ZJUWLAN"
		if current configuration of myConnection is not connected then
			connect myConnection
             display notification "Connected to ZJUWLAN"
		else
			disconnect myConnection
             display notification "Disconnected to ZJUWLAN"
		end if
	end tell
end tell


