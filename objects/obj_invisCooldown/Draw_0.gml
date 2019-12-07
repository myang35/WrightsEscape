var cameraX = camera_get_view_x(view_camera[0])
var cameraY = camera_get_view_y(view_camera[0])
var cameraHeight = camera_get_view_height(view_camera[0])
x = cameraX + sprite_get_width(spr_dashCoolDown) + 5;
y = cameraY + cameraHeight - sprite_height - 5;
draw_self();

var customColor = make_color_rgb(192, 247, 255);
draw_set_color(customColor);
draw_text_transformed(x+(sprite_width/2), y-10, "2", 0.5, 0.5, 0);
draw_set_color(c_white);