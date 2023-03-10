var inSidebar = mouse_x >= 0 && mouse_x <= 88
var inPlayArea = scrPosInCamera(mouse_x, mouse_y)

if (!placed && !global.paused) {
	// If it is in the resource HUD sidebar OR the play area
	if (inSidebar || inPlayArea) {
		x = mouse_x
		y = mouse_y
		scrDepthSetDynamic()
	}
	if (inPlayArea) {
		// Check if it is a valid position to place the mushroom based on all structures
		with (pMushroom) {
			if (id = other.id) {
				continue
			}
			if (point_in_circle(other.x, other.y, x, y, placementSpaceNeeded)) {
				other.positionValid = false
				break
			}
		}
	} else {
		positionValid = false
	}
	
	// If mouse is released, place/cancel placement
	if (mouse_check_button_released(mb_left)) {
		if (positionValid) {
			placed = true
			event_user(0)
			audio_play_sound(snd_PlacementSound, 10, false);
		} else {
			// Cancel placement if player released in sidebar and refund money
			global.money += creator.cost
			instance_destroy()
		}
	}
}

if (global.paused) {
	image_speed = 0
}
