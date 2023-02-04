closestShroom = instance_nearest(x, y, oTasty);
if (closestShroom == noone) {
	closestShroom = instance_nearest(x,y, oGoldenShroom);
}

cur_spd = spd;

if (slowed) {
	cur_spd *= .5;
	slowed = false;
}

if (closestShroom != noone) {
	if (point_distance(x, y, closestShroom.x, closestShroom.y) > stop_threshold) {
		mp_potential_step_object(closestShroom.x, closestShroom.y, cur_spd, pWall);
	}
	else {
		closestShroom.hp -= dmg;
	}
}

if (hp < 0) {
	instance_destroy();
}

