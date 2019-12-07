/// @description Catches player
global.playerLives -= 1;
if (global.playerLives > 0) {
	room_restart();
} else {
	room_goto(rm_caught)
}