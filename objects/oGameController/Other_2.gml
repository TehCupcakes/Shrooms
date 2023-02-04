game_set_speed(60, gamespeed_fps)

global.debug = os_get_config() == "debug"
global.colonyHealth = 60
global.displayHeight = 900
global.displayWidth = 1600

display_set_gui_size(global.displayWidth, global.displayHeight)
