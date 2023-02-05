// Don't let alarms tick down while paused
if (global.paused && alarm[0] >= 0) {
	alarm[0] += 1
}
