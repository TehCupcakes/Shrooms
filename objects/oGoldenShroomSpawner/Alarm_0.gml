newX = irandom_range(-range, range);
newY = irandom_range(-range, range);

instance_create_layer(oCamera.centerX + newX, oCamera.centerY + newY, "Instances", oGoldenShroom);

alarm[0] = irandom_range(300, 600);