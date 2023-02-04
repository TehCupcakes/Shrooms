/// @description Trigger spawn
if (global.colonyHealth <= 0) {
	// Game over, man! No more shrooms for you!
	instance_destroy()
	exit
}

// Inherit the parent event
event_inherited();
objSpawned.placed = true;
objSpawned.positionValid = true;