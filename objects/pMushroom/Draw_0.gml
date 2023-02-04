if (view_current == 0 || view_current == 2) {
	draw_self()
	if (view_current == 0) {
		if (placed) {
			// Draw healthbar
			var barWidth = 60
			draw_set_alpha(1)
			draw_set_color(c_red)
			draw_rectangle(x - barWidth / 2, y + 24, x - barWidth / 2 + round(barWidth * hp / maxHp), y + 30, false)
			draw_set_color(c_black)
			draw_rectangle(x - barWidth / 2, y + 24, x + barWidth / 2, y + 30, true)
		} else {
			draw_set_alpha(0.3)
			draw_set_color(c_red)
			with (pStructure) {
				if (id != other.id) {
					draw_circle(x, y, other.placementSpaceNeeded, false)
				}
			}
			if (!positionValid) {
				draw_set_alpha(1)
				draw_set_color(c_white)
				draw_sprite(sNoGood, 0, x, y)
			}
		}
	}
}