/// @description Draws the field of vision
draw_set_color(c_yellow);

var currAngle = initAngle
for (var j = 0; j < numRays * 3; j++) {
	for (var i = visionDistance; i > 0; i-=1) {
		var X = x + lengthdir_x(i, image_angle + currAngle)
		var Y = y + lengthdir_y(i, image_angle + currAngle)
		if (!collision_line(x, y, X, Y, obj_wall, false, true)) {
			draw_set_alpha(.125);
			draw_line_width(x, y, X, Y, 6);
			break;
		}
	}
	
	currAngle += (5/3)
}

//enable shader


//draw outlined sprite
draw_set_alpha(1);
draw_self();

