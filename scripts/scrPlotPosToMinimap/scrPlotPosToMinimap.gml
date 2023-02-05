function scrPlotPosToMinimap(xPos, yPos) {
	if (!instance_exists(oMinimap) || !instance_exists(oCamera)) {
		return {
			xVal: 0,
			yVal: 0,
		}
	}
	
	var fullWidth = oCamera.camMaxX + oCamera.playAreaWidth - oCamera.camMinX
	var fullHeight = oCamera.camMaxY + oCamera.playAreaHeight - oCamera.camMinY
	return {
		xVal: round((xPos - oCamera.camMinX) / fullWidth * oMinimap.minimapWidth),
		yVal: round((yPos - oCamera.camMinY) / fullHeight * oMinimap.minimapHeight),
	}
}