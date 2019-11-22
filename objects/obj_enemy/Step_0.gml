/// @description Checks for collision
// You can write your code in this editor
//for (var i = 1; i < 5; i++) {
//	if (collision_line(x, y, cone[i,0], cone[i,1], obj_player, false, true) && !collision_line(x, y, cone[i,0], cone[i,1], obj_wall, false, true) ) {
//		room_goto(rm_caught)
//	}
//}
var currAngle = initAngle
for (var j = 0; j < 19; j++) {
	for (var i = 50; i <= 300; i+=50) {
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

//image_angle += 1