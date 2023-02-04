var shroomsLeft = 0
with (oGoldenShroom) {
	if (placed) {
		shroomsLeft++
	}
}

global.colonyHealth = clamp(shroomsLeft * 10, 0, 100)
