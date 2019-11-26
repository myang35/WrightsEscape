if (!place_meeting(x, y-playerSpeed, obj_wall)) {
	y -= playerSpeed;
	playerDirection = Direction.UP;
}

// disable invisibility
if (isInvisible) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_player;
	alarm_set(1, room_speed * invisibleCooldown);
}