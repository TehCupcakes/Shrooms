// Colony health fill color
draw_set_alpha(1)
draw_set_color(c_yellow)
draw_rectangle(0, 0, hudWidth, global.colonyHealth / 100 * global.displayHeight, false)

// Colony health border
draw_set_color(c_black)
draw_rectangle(0, 0, hudWidth, global.displayHeight, true)

// Resource HUD border
draw_rectangle(global.displayWidth - hudWidth, 0, global.displayWidth, global.displayHeight, true)