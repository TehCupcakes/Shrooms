/// @description Adjust depth according to y position, but never more than 100 total so it doesn't move into the depth territory of another room layer
function scrDepthSetDynamic() {
	depth = layer_get_depth(layer) - (y / room_height * 100)
	return depth
}
