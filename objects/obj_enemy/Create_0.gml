numRays = 11;
initAngle = -((numRays-1) * 5) / 2;
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

