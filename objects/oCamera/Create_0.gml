playAreaHeight = 900
playAreaWidth = 1424 // our window is 1600x900, but we have HUD on both sides. 1600 - 88 * 2 = 1424
camMinX = 400
camMaxX = room_width - camMinX // Example default
camMinY = 0
camMaxY = room_height // Example default

// Start in the middle of the room
camX = camera_get_view_x(camMaxX - camMinX / 2)
camY = camera_get_view_y(camMaxY - camMinY / 2)

camera_set_view_pos(view_camera[0], camX, camY)

