playAreaHeight = camera_get_view_height(view_camera[0])
playAreaWidth = camera_get_view_width(view_camera[0]) // our window is 1600x900, but we have HUD on both sides. 1600 - 88 * 2 = 1424
camMinX = 400
camMaxX = room_width - camMinX - playAreaWidth
camMinY = 0
camMaxY = room_height - playAreaHeight

// Start in the middle of the room
camX = (camMaxX - camMinX + playAreaWidth) / 2
camY = (camMaxY - camMinY + playAreaHeight) / 2

camera_set_view_pos(view_camera[0], camX, camY)

halfWidth = camera_get_view_width(view_camera[0]) / 2;
halfHeight = camera_get_view_height(view_camera[0]) / 2;
centerX = camX + halfWidth;
centerY = camY + halfHeight;