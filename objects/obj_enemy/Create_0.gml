// You can write your code in this editor
initAngle = -45;
enum states{
	walking,
	standing,
	turning,
	chasing,
	topath
}
state = states.standing;
alarm_set(0, room_speed * 2);

numTurns = 90
alarm2Set = false;

visionDistance = 200;

