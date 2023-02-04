/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 0
if (placed && hp > 0) {
	for (var i = 0; i < ds_list_size(inRange); i++) {
		image_speed = 2
	}
}

if(image_speed == 0)
{
	image_index = 0
}