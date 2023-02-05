/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
image_speed = 0
if (placed && hp > 0 && !global.paused) {
	for (var i = 0; i < ds_list_size(inRange); i++) {
		var enemy = inRange[| i]
		enemy.slowed = true;
		image_speed = 2
	}
}

if(image_speed == 0)
{
	image_index = 0
}