if (view_current == 0 || view_current == 2) {
	draw_self()
	if (view_current == 0) {
		if (placed) {
			// Draw healthbar
			if (drawHealthbar) {
				var barWidth = 20
				var barHeight = 3
				draw_set_alpha(1)
				draw_set_color(c_red)
				draw_rectangle(x - barWidth / 2, y + 24, x - barWidth / 2 + round(barWidth * hp / maxHp), y + 24 + barHeight, false)
				draw_set_color(c_black)
				draw_rectangle(x - barWidth / 2, y + 24, x + barWidth / 2, y + 24 + barHeight, true)
			}
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
		
		// Display damage range preview when hovering/placing
		if (!global.paused && damageRange > 0 && (!placed || (global.heldShroom == noone && collision_point(mouse_x, mouse_y, self, false, false)))) {
			draw_set_alpha(1)
			draw_set_color(c_yellow)
			draw_circle(x, y, damageRange, true)
		}
	}
}

if (flashAlpha > 0) {
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset();
}