if (!audio_is_playing(snd_BackgroundMusic) && audio_group_is_loaded(audioMusic)) {
	audio_play_sound(snd_BackgroundMusic, 10, true);
}
