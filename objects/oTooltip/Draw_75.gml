if (enabled) {
	var mx = (window_mouse_get_x()/window_get_width()) * display_get_gui_width();
	var my = (window_mouse_get_y()/window_get_height()) * display_get_gui_height();

	
	draw_set_halign(fa_center);
	//draw_text(x + hudWidth / 2, y + sprite_height - 24, string(global.money));
	
	draw_set_alpha(.75);
	draw_set_color(c_black);
	
	var startX = mx-width;
	var startY = my+height;
	draw_rectangle(startX, startY, mx, my, false);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fntDefault);
	draw_set_halign(fa_left);
	draw_text(startX + 10, my + 10, tooltipText);
}