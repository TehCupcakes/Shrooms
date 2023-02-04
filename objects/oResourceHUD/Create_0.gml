hudWidth = 88
hudPadding = 12

// Set up resource types in HUD
// Place them on HUD_FG to make sure they are drawn above this object
var mushResource = instance_create_layer(hudWidth / 2, hudPadding + sprite_get_height(sResourceBg) / 2, "HUD_FG", oHudResource)
mushResource.resourceType = ResourceType.MUSHROOM
