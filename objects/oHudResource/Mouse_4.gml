var instanceType = oMushroom

// Etc. Expand with new types
if (shroomType == ShroomType.SHROOMY) {
	instanceType = oMushroom
}

// TODO: Check if you have enough resources first
var newInst = instance_create_layer(mouse_x, mouse_y, "Instances", instanceType)
newInst.placed = false
