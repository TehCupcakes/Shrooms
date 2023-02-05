// DEBUG
if (global.debug) {
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_set_font(fntDefault)
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0), "Mouse X: " + string(mouse_x))
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0) + 16, "Mouse Y: " + string(mouse_y))
}

if (global.paused) {
	// Dim the game a bit; this happens both for pause and game over screen
	draw_set_alpha(0.2)
	draw_set_color(c_black)
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false)
	
	draw_set_alpha(1)
	draw_set_font(fntGameOver)
	draw_set_halign(fa_center)
	var str = "Paused"
	if (global.gameComplete) {
		str = global.win ? "You Win!" : "Game Over"
	}
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3, str)
	
	if (global.gameComplete) {
		var timePlayedStr = scrFramesToTimeString(global.timePlayed)
		draw_set_font(fntDefault)
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3 + 96, (global.win ? "Clear Time: " : "Time Survived: ") + timePlayedStr)
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3 + 120, "Press \"R\" to restart")
	}
}

if (!global.gameComplete) {
	draw_set_alpha(0.8)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_font(fntDefault)
	draw_text_transformed(display_get_gui_width() / 2, 24, scrFramesToTimeString(global.timePlayed), 3, 3, 0)
}
