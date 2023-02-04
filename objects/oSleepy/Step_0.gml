/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (placed && hp > 0) {
	for (var i = 0; i < ds_list_size(inRange); i++) {
		var enemy = inRange[| i]
		enemy.slowed = true;
	}
}