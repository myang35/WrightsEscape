var cameraX = camera_get_view_x(view_camera[0])
var cameraY = camera_get_view_y(view_camera[0])
var cameraHeight = camera_get_view_height(view_camera[0])
x = cameraX + 5;
y = cameraY + cameraHeight - sprite_height - 5;
draw_self();