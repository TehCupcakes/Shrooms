if (global.colonyHealth >= WIN_SHROOM_COUNT) {
	scrEndGame(true)
	exit
}

if (global.colonyHealth <= 0) {
	// Game over, man! No more shrooms for you!
	scrEndGame(false)
	exit
}

if (!global.paused) {
	global.timePlayed++
}
