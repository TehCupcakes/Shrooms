// Check for enemies in range to damage
event_inherited();
image_speed = 0
if (placed && hp > 0) {
	var damaged = false;
	ds_list_clear(inRange)
	collision_circle_list(x, y, damageRange, pEnemy, false, true, inRange, false)
	for (var i = 0; i < ds_list_size(inRange); i++) {
		var enemy = inRange[| i]
		cur_dmg = dmg;
		if (buffed) {
			cur_dmg *= 2;
			buffed = false;
		}
		
		enemy.hp -= cur_dmg;
		enemy.damaged = true;
		damaged = true;
		image_speed = 2
	}
	
	if (damaged) {
		hp -= max(.5, dmg / 2);
		damaged = false;
		
	}
}

if(image_speed == 0)
{
	image_index = 0
}