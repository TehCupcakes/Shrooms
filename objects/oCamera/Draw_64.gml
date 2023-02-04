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

// Minimap?!
var minimapWidth = 240
var minimapHeight = 135
var minimapMargin = 32

// Background
draw_set_alpha(0.75)
draw_set_color(c_dkgray)
draw_rectangle(guiWidth - hudWidth - minimapMargin - minimapWidth, guiHeight - minimapMargin - minimapHeight, guiWidth - hudWidth - minimapMargin, guiHeight - minimapMargin, false)

// Camera region
var camRegionXScale = playAreaWidth / (camMaxX - camMinX + playAreaWidth)
var camRegionYScale = playAreaHeight / (camMaxY - camMinY + playAreaHeight)
var camRegionX = guiWidth - hudWidth - minimapMargin - minimapWidth + (camX - camMinX) * camRegionXScale
var camRegionY = guiHeight - minimapMargin - minimapHeight + (camY - camMinY) * camRegionYScale
draw_set_color(c_white)
draw_set_alpha(0.5)
draw_rectangle(camRegionX, camRegionY, camRegionX + minimapWidth * camRegionXScale, camRegionY + minimapHeight * camRegionYScale, false)

if (global.debug) {
	draw_set_alpha(1)
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_text(hudWidth + 8, 8, "CamX: " + string(camX))
	draw_text(hudWidth + 8, 24, "CamY: " + string(camY))
	draw_text(hudWidth + 8, 40, "CamMaxX: " + string(camMaxX))
	draw_text(hudWidth + 8, 56, "CamMaxY: " + string(camMaxY))
}
