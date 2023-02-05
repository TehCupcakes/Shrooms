function scrFramesToTimeString(frameCount) {
	var hours = 0
	var minutes = 0
	var seconds = 0
	
	var gameSpeed = game_get_speed(gamespeed_fps)
	var framesInMinute = gameSpeed * 60
	var framesInHour = framesInMinute * 60
	
	hours = floor(frameCount / framesInHour)
	minutes = floor((frameCount % framesInHour) / framesInMinute)
	seconds = floor((frameCount % framesInMinute) / gameSpeed)
	
	var hoursStr = (hours < 10) ? ("0" + string(hours)) : string(min(hours, 99))
	var minutesStr = (minutes < 10) ? ("0" + string(minutes)) : string(min(minutes, 59))
	var secondsStr = (seconds < 10) ? ("0" + string(seconds)) : string(min(seconds, 59))
	
	return hoursStr + ":" + minutesStr + ":" + secondsStr
}