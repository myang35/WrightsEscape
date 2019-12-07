// disable invisibility
if (isInvisible) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_InvisDown;
	alarm_set(1, room_speed * invisibleCooldown);
}