if (global.gameComplete) {
	instance_destroy()
	exit
}

var foundSpot = false;
while (!foundSpot) {
	newX = oCamera.centerX  + (irandom_range(minRange, maxRange) * choose(1,-1));
	newY = oCamera.centerY + (irandom_range(minRange, maxRange) * choose(1,-1));
	
	var collisionObject = collision_rectangle(newX - 16, newY - 16, newX + 16, newY + 16, pStructure, true, false);
	if (collisionObject == noone) {
		objSpawned = instance_create_layer(newX, newY, "Instances", objToSpawn);
		alarm[0] = frequency;
		foundSpot = true;
	}
}
