function scrPosInCamera(xPos, yPos) {
	// We can't do anything if the camera doesn't exist! Prevent crashes
	if (!instance_exists(oCamera)) {
		return false;
	}
	with (oCamera) {
		return xPos >= camX && xPos < camX + playAreaWidth && yPos >= camY && yPos < camY + playAreaHeight
	}
}