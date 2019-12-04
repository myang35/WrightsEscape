/// @description Draws text in rooms
// You can write your code in this editor
draw_set_color(c_black)
if (room == rm_escape) {
	draw_text(400, 384, "You have escaped! Press enter to play again.")
} else if (room == rm_caught) {
	draw_text(400, 384, "You have been caught! Press enter to try again.")
} 