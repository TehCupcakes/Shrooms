closestShroom = instance_nearest(x,y, oGoldenShroom);

if (point_distance(x, y, closestShroom.x, closestShroom.y) > stop_threshold) {
	dir = point_direction(x, y, closestShroom.x, closestShroom.y);
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
}