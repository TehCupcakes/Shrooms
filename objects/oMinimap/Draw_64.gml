if (instance_exists(oCamera)) {
	// Background
	draw_set_alpha(0.75)
	draw_set_color(c_dkgray)
	draw_rectangle(minimapGuiX, minimapGuiY, minimapGuiX + minimapWidth, minimapGuiY + minimapHeight, false)

	// Camera region
	var percentageOfX, percentageOfY, camRegionXScale, camRegionYScale;
	with (oCamera) {
		percentageOfX = (camX - camMinX) / (camMaxX - camMinX)
		percentageOfY = (camY - camMinY) / (camMaxY - camMinY)
		camRegionXScale = playAreaWidth / (camMaxX - camMinX + playAreaWidth)
		camRegionYScale = playAreaHeight / (camMaxY - camMinY + playAreaHeight)
	}
	
	var camRegionWidth = minimapWidth * camRegionXScale
	var camRegionHeight = minimapHeight * camRegionYScale
	var camRegionX = guiWidth - hudWidth - minimapMargin - minimapWidth + (minimapWidth - camRegionWidth) * percentageOfX
	var camRegionY = guiHeight - minimapMargin - minimapHeight + (minimapHeight - camRegionHeight) * percentageOfY
	draw_set_color(c_white)
	draw_set_alpha(0.5)
	draw_rectangle(camRegionX, camRegionY, camRegionX + camRegionWidth, camRegionY + camRegionHeight, false)
	
	// Draw instance representations on map
	draw_set_alpha(1)
	// Golden mushrooms :)
	draw_set_color(c_yellow)
	with (oGoldenShroom) {
		var mapPos = scrPlotPosToMinimap(x, y)
		draw_circle(other.minimapGuiX + mapPos.xVal, other.minimapGuiY + mapPos.yVal, 2, false)
	}
	// Holes
	draw_set_color(c_olive)
	with (oEnemyHole) {
		var mapPos = scrPlotPosToMinimap(x, y)
		draw_circle(other.minimapGuiX + mapPos.xVal, other.minimapGuiY + mapPos.yVal, 2, false)
	}
	// Enemies
	draw_set_color(c_red)
	with (pEnemy) {
		var mapPos = scrPlotPosToMinimap(x, y)
		draw_circle(other.minimapGuiX + mapPos.xVal, other.minimapGuiY + mapPos.yVal, 2, false)
	}
}

if (global.debug) {
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fntDefault)
	draw_set_halign(fa_left)
	draw_text(minimapGuiX, minimapGuiY + minimapHeight + 4, "Hovering minimap:" + (hovering ? "true" : "false"))
}
