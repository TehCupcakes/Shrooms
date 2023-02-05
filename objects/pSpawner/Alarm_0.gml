if (global.colonyHealth <= 0) {
	instance_destroy()
	exit
}

newX = irandom_range(minRange, maxRange) * choose(1,-1);
newY = irandom_range(minRange, maxRange) * choose(1,-1);

objSpawned = instance_create_layer(oCamera.centerX + newX, oCamera.centerY + newY, "Instances", objToSpawn);
alarm[0] = frequency;