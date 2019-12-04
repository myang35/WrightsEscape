/// @description Insert description here
if (global.gameStart == false) {
	room_goto(rm_startMenu);
} else {
	room_goto(rm_level1);
}