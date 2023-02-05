var shroomsLeft = 0
with (oGoldenShroom) {
	if (placed) {
		shroomsLeft++
	}
}

global.colonyHealth = clamp(shroomsLeft, 0, WIN_SHROOM_COUNT)
