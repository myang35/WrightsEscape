// decelerate
vspeed -= sign(vspeed);
hspeed -= sign(hspeed);

// stop at wall
if (place_meeting(x, y+vspeed, obj_wall)) {
	vspeed = 0;
}
if (place_meeting(x+hspeed, y, obj_wall)) {
	hspeed = 0;
}