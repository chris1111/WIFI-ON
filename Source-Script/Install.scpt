-- Run the Script, WIFI-ON WIFI-ON.app will be installed in Applications


set source to path to me as string
set source to POSIX path of source & "Contents/Resources/WIFI-ON.app"
set source to quoted form of source
set DestFile to "/Applications/"
do shell script "xattr -c " & source & "/"
do shell script "rm -rf /Applications/WIFI-ON.app"
delay 1
set theCommand to "cp -Rp " & source & " " & DestFile
do shell script theCommand
delay 1
tell application "System Events"
	get full name of current user
	make new login item at end of login items with properties ¬
		{path:"/Applications/WIFI-ON.app"}
end tell
delay 1
do shell script "open -a /Applications/WIFI-ON.app"
