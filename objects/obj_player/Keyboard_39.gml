if (!place_meeting(x+playerSpeed, y, obj_wall)) {
	x += playerSpeed;
	playerDirection = Direction.RIGHT;
}