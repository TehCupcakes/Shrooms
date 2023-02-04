// Colony health fill color
draw_set_alpha(1)
draw_set_color(c_yellow)
draw_rectangle(0, global.displayHeight, hudWidth, global.displayHeight - (global.colonyHealth / 100 * global.displayHeight), false)

// Colony health border
draw_set_color(c_black)
draw_rectangle(0, 0, hudWidth, global.displayHeight, true)

// Resource HUD border
draw_rectangle(global.displayWidth - hudWidth, 0, global.displayWidth, global.displayHeight, true)

// DEBUG
if (global.debug) {
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0), "Mouse X: " + string(mouse_x))
	draw_text(device_mouse_raw_x(0) + 16, device_mouse_raw_y(0) + 16, "Mouse Y: " + string(mouse_y))
}