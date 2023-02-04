game_set_speed(60, gamespeed_fps)

global.colonyHealth = 60
global.displayHeight = 900
global.displayWidth = 1600

hudWidth = 88
hudPadding = 12

display_set_gui_size(global.displayWidth, global.displayHeight)

// Set up resource types in HUD
var mushResource = instance_create_layer(hudWidth * 1.5, hudPadding + 32, "Instances", oHudResource)
mushResource.resourceType = ResourceType.MUSHROOM
