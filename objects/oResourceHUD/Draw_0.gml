draw_self()

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(fntDefault)
draw_set_halign(fa_center)
draw_text(x + hudWidth / 2, y + hudPadding + 48, string(global.money))
draw_sprite_ext(Nutrients_Sheet, 0, x + hudWidth / 2, y + hudPadding + 24, 3, 3, 0, c_white, 1)

draw_sprite(sShroomsMiniLogo, 0, x + hudWidth / 2, y + sprite_height - 12)