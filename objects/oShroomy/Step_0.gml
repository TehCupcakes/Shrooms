// Check for enemies in range to damage
event_inherited();

if (placed && hp > 0) {
	ds_list_clear(inRange)
	collision_circle_list(x, y, damageRange, pEnemy, false, true, inRange, false)
	for (var i = 0; i < ds_list_size(inRange); i++) {
		var enemy = inRange[| i]
		enemy.hp -= dmg;
		hp -= 1;
	}
}
