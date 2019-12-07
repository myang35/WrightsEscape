/// @description Invisible
if (isInvisible == true) {
	isInvisible = false;
	invisibleReady = false;
	sprite_index = spr_player;
	alarm_set(1, room_speed * invisibleCooldown);
} else if (invisibleReady) {
	audio_play_sound(snd_camo, 1, 0);
	isInvisible = true;
	sprite_index = spr_playerInvisible;
}