/// @description Checks for collision
var currAngle = initAngle
for (var j = 0; j < numRays; j++) {
	for (var i = 50; i <= visionDistance; i+=50) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (collision_line(x, y, X, Y, obj_wall, false, true)) {
			break
		}
		if (collision_line(x, y, X, Y, obj_player, false, true) && !obj_player.isInvisible) {
			state = states.chasing;
		}
	}
	
	currAngle += 5
}

if (state == states.chasing) {
	if (instance_exists(obj_player)) {
		if (soundPlayed == false) {
			audio_play_sound(snd_alert, 1, false);
			soundPlayed = true;
		}
		var _angle = point_direction(x,y,obj_player.x,obj_player.y);
		var _diff = angle_difference( _angle, image_angle );
		image_angle += min( max_turn, abs(_diff) ) * sign(_diff);
		path_end();
		mp_potential_step_object(obj_player.x, obj_player.y, 4, obj_wall);
	}
}

if (state == states.walking&&(path_position == 0||path_position == 1)){
	path_speed = 0;
	state = states.standing; 
	show_debug_message("state = standing");
	alarm_set(1, room_speed * 2);
}

if (state == states.walking) {
	image_angle = direction;
}

if(state == states.turning && numTurns > 0 && !seePlayer) {
	image_angle +=2;
	numTurns -= 1;
	originalAngle = image_angle;
	show_debug_message("numTurns = " + string(numTurns));
}
if(numTurns <= 0 && alarm2Set == false){
	path_speed = 2;
	alarm_set(2, room_speed/10);
	alarm2Set = true;
}

if (state == states.standing || state == states.turning) {
	image_speed = 0;
} else {
	image_speed = 1;
}