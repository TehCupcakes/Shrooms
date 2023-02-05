if (global.paused) {
	image_speed = 0;
} else {
	image_speed = 0.25;
	
	if (point_distance(x,y,mouse_x,mouse_y) < distanceToMouseForCollecting) {
		global.money++;
		instance_destroy();
		instance_create_depth(x,y,-10000,oNutrientsCollect);
	}
}

