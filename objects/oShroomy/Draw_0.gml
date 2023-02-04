if (view_current == 0 && placed && global.debug) {
	draw_set_alpha(0.3)
	draw_set_color(c_red)
	draw_circle(x, y, damageRange, false)
}

event_inherited()
