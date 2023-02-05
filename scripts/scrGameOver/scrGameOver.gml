function scrGameOver() {
	instance_destroy(oGoldenShroomSpawner)
	if (instance_exists(global.heldShroom)) {
		instance_destroy(global.heldShroom)
	}
}
