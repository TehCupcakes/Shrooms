closestShroom = instance_nearest(x,y, oGoldenShroom);

if (closestShroom != noone) {
	if (point_distance(x, y, closestShroom.x, closestShroom.y) > stop_threshold) {
		dir = point_direction(x, y, closestShroom.x, closestShroom.y);
		x += lengthdir_x(spd, dir);
		y += lengthdir_y(spd, dir);
		mp_potential_step(closestShroom.x, closestShroom.y, spd, 1);
	}
	else {
		closestShroom.hp -= dmg;
	}
}

if (hp < 0) {
	instance_destroy();
}
