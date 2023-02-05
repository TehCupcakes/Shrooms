function scrGameOver() {
	global.paused = true
	instance_destroy(pSpawner)
	if (instance_exists(global.heldShroom)) {
		instance_destroy(global.heldShroom)
	}
}
