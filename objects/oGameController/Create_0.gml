/// @description Variables which should be reset every time the game restarts
global.colonyHealth = 100
global.heldShroom = noone
global.money = 10

global.debug = os_get_config() == "debug"
if (!global.debug) {
	randomize();
}
