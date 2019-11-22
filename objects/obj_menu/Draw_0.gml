/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
if (room == rm_startMenu) {
	draw_text(400, 384, "Press enter to start.")
} else if (room == rm_caught) {
	draw_text(400, 384, "You have been caught! Press enter to try again.")
} else {
	draw_text(400, 384, "You have escaped! Press enter to play again.")
}