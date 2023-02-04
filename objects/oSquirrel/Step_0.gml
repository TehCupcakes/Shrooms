ds_list_clear(list);
collision_circle_list(x, y, 9000, oGoldenShroom, 0, 0, list, true);

if (ds_list_size(list) > 0) 
{
	var closestShroom = list[| 0];
	
	var dir = point_direction(x, y, closestShroom.x, closestShroom.y);
	x += lengthdir_x(speed, dir);
	y += lengthdir_y(speed, dir);
}	