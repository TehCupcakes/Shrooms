// DEBUG
if (global.debug) {
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_set_font(fntDefault)
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0), "Mouse X: " + string(mouse_x))
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0) + 16, "Mouse Y: " + string(mouse_y))
}

if (global.colonyHealth <= 0) {
	// Dim the game a bit
	draw_set_alpha(0.2)
	draw_set_color(c_black)
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false)
	
	draw_set_alpha(1)
	draw_set_font(fntGameOver)
	draw_set_halign(fa_center)
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3, "Game Over")
	
	draw_set_font(fntDefault)
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3 + 120, "Press \"R\" to restart")
}
