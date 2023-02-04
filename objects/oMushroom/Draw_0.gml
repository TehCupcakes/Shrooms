draw_self()

// Technically you would have one of these for each other object it is spreading to
var spreadPercent = spread / maxSpread
draw_sprite_ext(sRootSpread, 0, x + lengthdir_x(16, spreadDir), y + lengthdir_y(16, spreadDir), spreadPercent, spreadPercent, spreadDir, c_white, image_alpha)
