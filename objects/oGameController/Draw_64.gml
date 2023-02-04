// DEBUG
if (global.debug) {
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0), "Mouse X: " + string(mouse_x))
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0) + 16, "Mouse Y: " + string(mouse_y))
}
