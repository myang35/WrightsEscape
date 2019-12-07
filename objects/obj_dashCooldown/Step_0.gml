if (obj_player.dashCooldownStart) {
	image_index = 1;
	sprite_set_speed(spr_dashCoolDown, 1, spritespeed_framespersecond);
	obj_player.dashCooldownStart = false;
}