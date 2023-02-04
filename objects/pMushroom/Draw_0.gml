if (view_current == 0 || view_current == 2) {
	draw_self()
	if (view_current == 0 && !positionValid) {
		draw_sprite(sNoGood, 0, x, y)
	}
}