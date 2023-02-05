if (global.inputs.pause && !global.gameComplete) {
	if (room == rmGame) {
		global.paused = !global.paused
	} else {
		alarm[0] = -1
		alarm[1] = -1
		room_goto(rmGame)
	}
}