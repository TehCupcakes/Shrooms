/// @description Instance placed in play area
event_inherited()

spread = instance_create_layer(x, y, "FX", oSpreadFX)
spread.creator = id

spread.image_xscale = scale;
spread.image_yscale = scale;