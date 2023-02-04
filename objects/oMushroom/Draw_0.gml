if (global.debug && view_current == 0) {
	draw_set_alpha(0.3)
	draw_set_color(c_red)
	draw_circle(x, y, damageRange, false)
}
if (view_current == 0 || view_current == 2) {
	draw_self()
}