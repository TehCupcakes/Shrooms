/// @description Insert description here
// You can write your code in this editor
if (fade) {
	y-=1;
	alpha-=.05;
}

if (alpha <= 0) {
	instance_destroy();
}