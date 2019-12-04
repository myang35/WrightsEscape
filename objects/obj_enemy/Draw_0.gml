/// @description Draws the field of vision
draw_set_color(c_yellow);

var currAngle = initAngle
for (var j = 0; j < numRays*5; j++) {
	for (var i = visionDistance; i > 0; i-=1) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (!collision_line(x, y, X, Y, obj_wall, false, true)) {
			draw_line(x, y, X, Y);
			break;
		}
	}
	
	currAngle += 1
}

//enable shader


//draw outlined sprite
draw_self();

