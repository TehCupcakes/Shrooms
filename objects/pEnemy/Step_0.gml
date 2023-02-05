if (global.paused) {
	return
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
		mp_potential_step_object(closestShroom.x, closestShroom.y, cur_spd, pWall);
	}
	else {
		curDmg = dmg;
		if (closestShroom.buffed) {
			curDmg /= 2;
		}
		closestShroom.hp -= dmg;
	}
}

if (hp < 0) {
	instance_destroy();
}

