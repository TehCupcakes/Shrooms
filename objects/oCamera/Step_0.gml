camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0])

// Do ALL camera reposition logic here
var camSpeed = 6
if (keyboard_check(vk_shift)) {
	camSpeed *= 2
}
var hdir = global.inputs.right - global.inputs.left
var vdir = global.inputs.down - global.inputs.up
if ((hdir != 0 || vdir != 0) && (!instance_exists(oMinimap) || !oMinimap.moveToPoint)) {
	var moveDir = point_direction(0, 0, hdir, vdir)
	camX += lengthdir_x(camSpeed, moveDir)
	camY += lengthdir_y(camSpeed, moveDir)
}

// Limit the camera to the valid play area
camX = clamp(camX, camMinX, camMaxX)
camY = clamp(camY, camMinY, camMaxY)

// Now update the actual view camera according to our calculations
camera_set_view_pos(view_camera[0], camX, camY)
