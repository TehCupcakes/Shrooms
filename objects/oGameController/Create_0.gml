/// @description Variables which should be reset every time the game restarts
global.colonyHealth = 1
global.heldShroom = noone
global.money = 20
global.score = 0
global.paused = false
global.win = false
global.gameComplete = false
global.timePlayed = 0 // Number of frames since current game started

global.debug = os_get_config() == "debug"
if (!global.debug) {
	randomize();
}
