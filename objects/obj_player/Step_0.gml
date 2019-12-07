 // decelerate
vspeed -= sign(vspeed);
hspeed -= sign(hspeed);

// stop at wall
if (place_meeting(x, y+vspeed, obj_wall)) {
	vspeed = 0;
}
if (place_meeting(x+hspeed, y, obj_wall)) {
	hspeed = 0;
}

if (!keyboard_check(vk_up)
	&& !keyboard_check(vk_down)
	&& !keyboard_check(vk_left)
	&& !keyboard_check(vk_right)) {
	image_speed = 0;
	image_index = 0;
}

show_debug_message("playerLives = " + string(global.playerLives));