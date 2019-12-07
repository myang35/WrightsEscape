/// @description Insert description here
audio_stop_all();
if (room == rm_caught) {
	audio_play_sound(snd_captured, 1, 1);
} else if (room == rm_escape) {
	audio_play_sound(snd_escaped, 1, 1);
}
