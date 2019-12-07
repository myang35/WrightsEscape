var cameraX = camera_get_view_x(view_camera[0])
var cameraY = camera_get_view_y(view_camera[0])
var cameraHeight = camera_get_view_height(view_camera[0])
x = cameraX;
y = cameraY + cameraHeight - sprite_height + 30;
draw_self();