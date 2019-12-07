/// @description Creates Buttons list
if (!audio_is_playing(snd_start)) {
	audio_stop_all();
	audio_play_sound(snd_start, 1, 1);
}
global.gameStart = false;
buttonH = 32

button[0] = "START";
button[1] = "HOW TO PLAY";
button[2] = "EXIT";
buttons = array_length_1d(button);

menuIndex = 0;
lastSelected = 0;
