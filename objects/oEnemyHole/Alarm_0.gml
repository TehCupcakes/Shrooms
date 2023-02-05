if (global.colonyHealth <= 0) {
	exit
}

instance_create_layer(x, y, "Instances", choose(oSlug, oSlug, oSlug, oSquirrel, oSquirrel, oHedgehog));
alarm[0] = irandom_range(60*5, 60*10);

spawnAmount--;
if (spawnAmount <= 0) {
	instance_destroy();
}