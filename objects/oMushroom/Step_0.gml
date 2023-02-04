// Check for enemies in range to damage
if (placed) {
	ds_list_clear(inRange)
	collision_circle_list(x, y, damageRange, pEnemy, false, true, inRange, false)
	for (var i = 0; i < ds_list_size(inRange); i++) {
		var enemy = inRange[| i]
		// TODO: Damage the enemy if they are living!
	}
}
