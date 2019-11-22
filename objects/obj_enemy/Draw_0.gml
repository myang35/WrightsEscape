/// @description Draws the field of vision
// You can write your code in this editor
draw_set_color(c_black)
//for (var i = 0; i < 5; i++) {
//	draw_line(x, y, cone[i, 0], cone[i,1])
//}

/*
for (var i = 0; i < 19; i++) {
	draw_line(x, y, cone[i, 0], cone[i, 1])
}
*/

var currAngle = initAngle
for (var j = 0; j < 19; j++) {
	for (var i = 50; i <= 300; i+=50) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (!collision_line(x, y, X, Y, obj_wall, false, true)) {
			draw_line(x, y, X, Y)
		}
	}
	
	currAngle += 5
}


draw_self()