if (!audio_is_playing(snd_levels)) {
	audio_stop_all();
	audio_play_sound(snd_levels,1,1);
}