if (!global.gameComplete) {
	global.money++;
	var coinFlip = choose(0,1)
	if (coinFlip == 1) {
		instance_create_depth(x, y, -10000, oNutrients);
	}
}
