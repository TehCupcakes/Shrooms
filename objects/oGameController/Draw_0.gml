if (room == rmStart) {
	draw_set_alpha(1)
	draw_sprite(sSplash, 0, 0, 0)
	
	if (!textBlink) {
		draw_set_color(c_black)
		draw_set_font(fntGameOver)
		draw_set_halign(fa_center)
		draw_text(room_width / 2, room_height - 128, "Press Enter to start")
	}
}