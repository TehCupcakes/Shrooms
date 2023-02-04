playAreaHeight = 900
playAreaWidth = 1424 // our window is 1600x900, but we have HUD on both sides. 1600 - 88 * 2 = 1424
camMinX = 400
camMaxX = camMinX + 480 // Example default
camMinY = 0
camMaxY = 480 // Example default

camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0])
