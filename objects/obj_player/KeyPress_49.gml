/// @description Dash
if (dashReady) {
	audio_play_sound(snd_dash, 1, 0);
	var dashSpeed = 15;
	switch (playerDirection) {
		case Direction.UP:
			vspeed = -dashSpeed;
			break;
		case Direction.DOWN:
			vspeed = dashSpeed;
			break;
		case Direction.LEFT:
			hspeed = -dashSpeed;
			break;
		case Direction.RIGHT:
			hspeed = dashSpeed;
			break;
	}
	dashReady = false;
	dashCooldownStart = true;
	alarm_set(0, room_speed * dashCooldown);
	
	if (isInvisible) {
		sprite_index = spr_player;
		isInvisible = false;
		invisibleReady = false;
		invisibleCooldownStart = true;
		alarm_set(1, room_speed * invisibleCooldown);
	}
	
}