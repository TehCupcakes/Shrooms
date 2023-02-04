var spreadPercent = spread / maxSpread
for (var dir = 0; dir < 360; dir += 30) {
	draw_sprite_ext(sprite_index, 0, x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), spreadPercent, spreadPercent, dir, c_white, image_alpha)
}
