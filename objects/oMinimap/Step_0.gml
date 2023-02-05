if (!instance_exists(oCamera)) {
	instance_destroy()
	exit
}

var mouseGuiX = device_mouse_raw_x(0)
var mouseGuiY = device_mouse_raw_y(0)
hovering = point_in_rectangle(mouseGuiX, mouseGuiY, minimapGuiX, minimapGuiY, minimapGuiX + minimapWidth, minimapGuiY + minimapHeight)

// Detect clicking on minimap
if (hovering && mouse_check_button_pressed(mb_left)) {
	moveToPoint = true
}

// Detect release (regardless of where pointer is)
if (mouse_check_button_released(mb_left)) {
	moveToPoint = false
}

// If the mouse is hover over the minimap AND they previously clicked on it, move camera to specified area
if (moveToPoint && (global.gameComplete || !global.paused)) {
	var xOffsetPercent = clamp((mouseGuiX - minimapGuiX) / minimapWidth, 0, 1)
	var yOffsetPercent = clamp((mouseGuiY - minimapGuiY) / minimapHeight, 0, 1)
	with (oCamera) {
		camera_set_view_pos(view_camera[0], (camMaxX) * xOffsetPercent, (camMaxY) * yOffsetPercent)
	}
}