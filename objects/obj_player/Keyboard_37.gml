// player movement
if (!place_meeting(x-playerSpeed, y, obj_wall)) {
	x -= playerSpeed;
	playerDirection = Direction.LEFT;
}

// disable invisibility
if (isInvisible) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_player;
	alarm_set(1, room_speed * invisibleCooldown);
}