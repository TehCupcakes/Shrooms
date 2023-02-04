if (view_current == 0 || view_current == 2) {
	draw_self()
	if (view_current == 0) {
		if (!placed) {
			draw_set_alpha(0.3)
			draw_set_color(c_red)
			draw_circle(x, y, placementSpaceNeeded, false)
			if (!positionValid) {
				draw_set_alpha(1)
				draw_set_color(c_white)
				draw_sprite(sNoGood, 0, x, y)
			}
		}
	}
}