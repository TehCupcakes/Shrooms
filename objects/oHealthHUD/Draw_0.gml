// Draw the "unfilled" bar as the background
draw_sprite(sprite_index, 0, x, y)

// Portion of the health that is "filled"
var topPos = barHeight - (global.colonyHealth / 100 * barHeight)
draw_sprite_part(sprite_index, 1, 0, topPos, barWidth, barHeight - topPos, x, y + topPos)
