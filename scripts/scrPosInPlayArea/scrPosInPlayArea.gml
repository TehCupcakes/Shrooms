function scrPosInPlayArea(xPos, yPos) {
	// We can't do anything if the camera doesn't exist! Prevent crashes
	if (!instance_exists(oCamera)) {
		return false;
	}
	with (oCamera) {
		return xPos >= camMinX && xPos < camMaxX + playAreaWidth && yPos > camMinY && yPos < camMaxY + playAreaHeight
	}
}