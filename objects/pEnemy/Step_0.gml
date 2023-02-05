if (global.paused) {
	image_speed = 0
	image_index = 0
	return
} else {
	image_speed = 2
}

// Find the closest golden shroom that is PLACED
var closestTasty = noone
var closestDistTasty = 10000000
with (oTasty) {
	// Ignore any shrooms that aren't placed
	if (placed) {
		var currentDist = distance_to_object(other)
		if (closestTasty == noone || currentDist < closestDistTasty) {
			closestTasty = self
			closestDistTasty = currentDist
		}
	}
}

var closestGolden = noone;
var closestDistGolden = 10000000;
with (oGoldenShroom) {
	// Ignore any shrooms that aren't placed
	if (placed) {
		var currentDist = distance_to_object(other)
		if (closestGolden == noone || currentDist < closestDistGolden) {
			closestGolden = self
			closestDistGolden = currentDist
		}
	}
}

var closestShroom = closestGolden;
if (closestDistTasty < closestDistGolden) {
	closestShroom = closestTasty;
}

cur_spd = spd;

if (slowed) {
	cur_spd *= .5;
	slowed = false;
}

if (closestShroom != noone) {
	if (point_distance(x, y, closestShroom.x, closestShroom.y) > stop_threshold) {
		var dir = point_direction(x, y, closestShroom.x, closestShroom.y);
		if (dir > 90 && dir < 270){
			image_xscale = 1;
		}
		else {
			image_xscale = -1;
		}
		mp_potential_step_object(closestShroom.x, closestShroom.y, cur_spd, pMushroom);
	}
	else {
		curDmg = dmg;
		if (closestShroom.buffed) {
			curDmg /= 2;
		}
		closestShroom.hp -= dmg;
		closestShroom.damaged = true;
	}
}

if (damaged && flashAlpha == 0) {
	flashAlpha = 1;
}

if (flashAlpha > 0) {
	flashAlpha -= .05;
}

if (damaged && flashAlpha <= 0) {
	damaged = false;
	flashAlpha = 0;
}

if (hp < 0) {
	instance_destroy();
}

