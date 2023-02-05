draw_self()

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(fntDefault)
draw_set_halign(fa_center)
draw_text(x + hudWidth / 2, y + sprite_height - 24, string(global.money))
draw_sprite_ext(Nutrients_Sheet, 0, x + hudWidth / 2, y + sprite_height - 24 - 12, 2, 2, 0, c_white, 1)
