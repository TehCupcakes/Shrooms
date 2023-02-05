if (global.inputs.pause && !global.gameComplete) {
	if (room == rmGame) {
		global.paused = !global.paused
	} else {
		room_goto(rmGame)
	}
}