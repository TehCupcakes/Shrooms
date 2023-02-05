minimapWidth = 346
minimapHeight = 338
minimapMargin = 32

hudWidth = 88
guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

minimapGuiX = guiWidth - hudWidth - minimapMargin - minimapWidth
minimapGuiY = guiHeight - minimapMargin - minimapHeight

hovering = false // When mouse is inside minimap
moveToPoint = false // When minimap has been clicked
