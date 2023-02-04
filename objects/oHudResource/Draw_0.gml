var disabled = global.money < cost

draw_set_alpha(1)
draw_sprite(sprite_index, disabled, x, y)
draw_sprite(shroomSprite, 0, x, y)

if (disabled) {
	draw_set_alpha(0.5)
	draw_set_color(c_dkgray)
	draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, false)
}
