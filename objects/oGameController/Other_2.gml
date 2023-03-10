/// @description One time set up
game_set_speed(60, gamespeed_fps)

global.colonyHealth = 1
global.displayHeight = 900
global.displayWidth = 1600

display_set_gui_size(global.displayWidth, global.displayHeight)

global.inputs = {
	up: false,
	down: false,
	left: false,
	right: false,
	pause: false,
}

global.bgmVolume = global.debug ? 0 : 0.5
global.sfxVolume = 0.5
audio_group_set_gain(audioMusic, global.bgmVolume, 0)
audio_group_set_gain(audioSfx, global.sfxVolume, 0)

audio_group_load(audioMusic)
audio_group_load(audioSfx)


// Toggle the "press enter" text
textBlink = false
alarm[0] = 45
