hudWidth = 88
hudPadding = 12

height = sprite_get_height(sResourceBg);

// Set up resource types in HUD
// Place them on HUD_FG to make sure they are drawn above this object
var types = [
	ShroomType.SHROOMY,
	ShroomType.BLAZE,
	ShroomType.SLEEPY,
	ShroomType.POPPY,
	ShroomType.TASTY,
	ShroomType.STUMPY,
	ShroomType.GOLDEN,
]

for (var i = 0; i < array_length(types); i++) {
	var res = instance_create_layer(hudWidth / 2, hudPadding + height / 2 + ((hudPadding + height) * (i+1)), "HUD_FG", oHudResource)
	with (res) {
		shroomType = types[i]
		event_user(0)
	}
}
