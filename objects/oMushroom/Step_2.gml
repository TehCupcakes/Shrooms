var inSidebar = mouse_x >= 0 && mouse_x <= 88
var inPlayArea = scrPosInCamera(mouse_x, mouse_y)

if (!placed) {
	// If it is in the resource HUD sidebar OR the play area
	if (inSidebar || inPlayArea) {
		x = mouse_x
		y = mouse_y
	}
	
	if (mouse_check_button_released(mb_left)) {
		if (inPlayArea) {
			placed = true
			event_user(0)
		} else {
			// Cancel placement if player released in sidebar
			instance_destroy()
		}
	}
}