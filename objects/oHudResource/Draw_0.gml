draw_set_alpha(1)
draw_self()
draw_sprite(shroomSprite, 0, x, y)

if (global.money < cost) {
	draw_set_alpha(0.5)
	draw_set_color(c_dkgray)
	draw_rectangle(x, y, sprite_width, sprite_height, false)
}