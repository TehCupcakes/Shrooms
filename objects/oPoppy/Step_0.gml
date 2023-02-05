/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
image_speed = 0
if (placed && hp > 0 && !global.paused) {
	ds_list_clear(shroomsInRange)
	collision_circle_list(x, y, damageRange, pMushroom, false, true, shroomsInRange, false)
	for (var i = 0; i < ds_list_size(shroomsInRange); i++) {
		var shroom = shroomsInRange[| i]
		shroom.buffed = true;
		image_speed = 2
	}
}

if(image_speed == 0)
{
	image_index = 0
}