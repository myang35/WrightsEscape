/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[0])+5;
y=camera_get_view_y(view_camera[0])+5;
draw_self();
//sif !instance_exists(obj_player) exit;
var customColor = make_color_rgb(192, 247, 255);
draw_set_color(customColor);
draw_rectangle(x+4,y+2, x+(currentTime/maxTime)*120, y+10, false );
draw_set_color(c_white);