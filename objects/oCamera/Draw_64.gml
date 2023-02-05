// Draw arrows at the edge of the screen when the player is able to move the camera in that direction
var hudWidth = 88
var arrowScale = 1
var guiWidth = display_get_gui_width()
var guiHeight = display_get_gui_height()

if (camX < camMaxX) {
	draw_sprite_ext(sArrow, 0, guiWidth - 8 - hudWidth, guiHeight / 2, arrowScale, arrowScale, 0, c_white, 1) // Right
}
if (camY > camMinY) {
	draw_sprite_ext(sArrow, 0, guiWidth / 2, 8, arrowScale, arrowScale, 90, c_white, 1) // Up
}
if (camX > camMinX) {
	draw_sprite_ext(sArrow, 0, hudWidth + 8, guiHeight / 2, arrowScale, arrowScale, 180, c_white, 1) // Left
}
if (camY < camMaxY) {
	draw_sprite_ext(sArrow, 0, guiWidth / 2, guiHeight - 8, arrowScale, arrowScale, 270, c_white, 1) // Down
}

if (global.debug) {
	draw_set_alpha(1)
	draw_set_font(fntDefault)
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text(hudWidth + 8, 8, "CamX: " + string(camX))
	draw_text(hudWidth + 8, 24, "CamY: " + string(camY))
	draw_text(hudWidth + 8, 40, "CamMaxX: " + string(camMaxX))
	draw_text(hudWidth + 8, 56, "CamMaxY: " + string(camMaxY))
	
	draw_text(hudWidth + 8, 72, "Mouse X: " + string(mouse_x))
	draw_text(hudWidth + 8, 88, "Mouse Y: " + string(mouse_y))
}
