/// @description Checks for collision
var currAngle = initAngle
for (var j = 0; j < 19; j++) {
	for (var i = 50; i <= visionDistance; i+=50) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (collision_line(x, y, X, Y, obj_wall, false, true)) {
			break
		}
		if collision_line(x, y, X, Y, obj_player, false, true) {
			room_goto(rm_caught)
			
		}
	}
	
	currAngle += 5
}