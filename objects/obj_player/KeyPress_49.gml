/// @description Dash
var dashSpeed = 15;
switch (playerDirection) {
	case Direction.UP:
		vspeed = -dashSpeed;
		break;
	case Direction.DOWN:
		vspeed = dashSpeed;
		break;
	case Direction.LEFT:
		hspeed = -dashSpeed;
		break;
	case Direction.RIGHT:
		hspeed = dashSpeed;
		break;
}