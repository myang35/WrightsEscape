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
			room_goto(rm_caught)
			
		}
	}
	
	currAngle += 5
}
if (state == states.walking&&(path_position == 0||path_position == 1)){
	path_speed = 0;
	state = states.standing; 
	show_debug_message("state = standing");
	alarm_set(1, room_speed * 2);
}


if(state == states.turning && numTurns > 0){
	image_angle +=2;
	numTurns -= 1;
	show_debug_message("numTurns = " + string(numTurns));
}
if(numTurns <= 0 && alarm2Set == false){
	path_speed = 2;
	alarm_set(2, room_speed);
	alarm2Set = true;
}
	