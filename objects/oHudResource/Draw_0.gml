var disabled = global.money < cost

draw_set_alpha(1)
draw_sprite(sprite_index, disabled, x, y)
draw_sprite(shroomSprite, 0, x, y - 8)

draw_set_color(c_black)
draw_set_font(fntDefault)
draw_set_halign(fa_center)
draw_text(x, y + 8, string(cost))

if (disabled) {
	draw_set_alpha(0.5)
	draw_set_color(c_dkgray)
	draw_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, false)
}
