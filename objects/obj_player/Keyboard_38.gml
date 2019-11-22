if (!place_meeting(x, y-playerSpeed, obj_wall)) {
	y -= playerSpeed;
	playerDirection = Direction.UP;
}