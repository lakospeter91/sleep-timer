set minutes to getUserInput()
delay (60 * minutes)
tell application "Finder" to sleep



on getUserInput()
	display dialog "Sleep time in minutes:" default answer "15"
	set minutes to text returned of result
	if isNumber(minutes) then
		return minutes as number
	else
		getUserInput()
	end if
end getUserInput

on isNumber(txt)
	try
		set num to txt as number
		return true
	on error
		return false
	end try
end isNumber