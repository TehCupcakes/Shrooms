/// @description Instance placed in play area
spread = instance_create_layer(x, y, "FX", oSpreadFX, {
	creator: id
})

spread.image_xscale = scale;
spread.image_yscale = scale;