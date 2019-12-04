/// @description Selecting menu option
switch(menuIndex) {
	case 0:
		room_goto(rm_level1);
		break;
	case 1:
		room_goto(rm_instructions );
		break;
	case 2:
		game_end();
		break;
}