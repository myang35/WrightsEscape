// player attributes
playerSpeed = 5;
if (!variable_global_exists("playerLives")) {
	global.playerLives = 3;
}

// player states
enum Direction {
	UP,
	DOWN,
	LEFT,
	RIGHT
}
playerDirection = Direction.RIGHT;
isInvisible = false;

// abilities cooldown
dashCooldown = 2;
invisibleCooldown = 5;

// abilities ready
dashReady = true;
invisibleReady = true;