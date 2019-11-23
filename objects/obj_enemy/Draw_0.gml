/// @description Draws the field of vision
draw_set_color(c_black)

var currAngle = initAngle
for (var j = 0; j < 19; j++) {
	for (var i = 50; i <= visionDistance; i+=50) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (!collision_line(x, y, X, Y, obj_wall, false, true)) {
			draw_line(x, y, X, Y)
		}
	}
	
	currAngle += 5
}


draw_self()