/// @description Insert description here
// You can write your code in this editor
if (currentTime > 0){
	currentTime = currentTime-delta_time/1000000;
}
else{
	currentTime = 0
}
if(currentTime <= 0){
	room_goto(rm_caught);
}