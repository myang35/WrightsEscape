if (!place_meeting(x, y+playerSpeed, obj_wall)) {
	y += playerSpeed;
	image_speed = 1;
	image_angle = 180;
	playerDirection = Direction.DOWN;
}

// disable invisibility
if (isInvisible) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_player;
	invisibleCooldownStart = true;
	alarm_set(1, room_speed * invisibleCooldown);
}