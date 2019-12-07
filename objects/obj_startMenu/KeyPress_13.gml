/// @description Selecting menu option
audio_play_sound(snd_menuselect,1,0);
switch(menuIndex) {
	case 0:
		global.gameStart = true;
	case 1:
		room_goto(rm_text);
		break;
	case 2:
		game_end();
		break;
}