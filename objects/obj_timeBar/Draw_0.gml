/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[0])+5;
y=camera_get_view_y(view_camera[0])+5;
draw_self();
//sif !instance_exists(obj_player) exit;
draw_set_color(c_green);
draw_rectangle(x+2,y+3, x+(currentTime/maxTime)*120, y+11, false );
draw_set_color(c_white);