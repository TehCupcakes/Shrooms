// Draw the "unfilled" bar as the background
draw_set_alpha(1)
draw_sprite(sprite_index, 0, x, y)

// Portion of the health that is "filled"
var topPos = barHeight - (global.colonyHealth / WIN_SHROOM_COUNT * barHeight)
draw_sprite_part(sprite_index, 1, 0, topPos, barWidth, barHeight - topPos, x, y + topPos)
