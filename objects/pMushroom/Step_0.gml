/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	instance_destroy();
	exit;
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