if (!place_meeting(x+playerSpeed, y, obj_wall)) {
	x += playerSpeed;
	image_speed = 1;
	image_angle = 270;
	playerDirection = Direction.RIGHT;
}

// disable invisibility
if (isInvisible) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_player;
	alarm_set(1, room_speed * invisibleCooldown);
}