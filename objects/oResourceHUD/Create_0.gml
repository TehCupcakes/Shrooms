hudWidth = 88
hudPadding = 12

height = sprite_get_height(sResourceBg);

// Set up resource types in HUD
// Place them on HUD_FG to make sure they are drawn above this object
var shroomy= instance_create_layer(hudWidth / 2, hudPadding + height / 2, "HUD_FG", oHudResource)
shroomy.shroomType = ShroomType.SHROOMY
with(shroomy) {
	event_user(0);
}

var blaze = instance_create_layer(hudWidth / 2, (hudPadding * 2) + height + (height / 2), "HUD_FG", oHudResource)
blaze.shroomType = ShroomType.BLAZE
with(blaze) {
	event_user(0);
}

var golden = instance_create_layer(hudWidth / 2, (hudPadding * 3) + (height * 2 ) + (height / 2), "HUD_FG", oHudResource)
golden.shroomType = ShroomType.GOLDEN
with(golden) {
	event_user(0);
}
