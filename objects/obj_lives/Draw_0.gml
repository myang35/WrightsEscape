x=camera_get_view_x(view_camera[0]) + sprite_get_width(spr_timeBar) + 15;
y=camera_get_view_y(view_camera[0]) + 5;
draw_self();

if (variable_global_exists("playerLives")) {
	var livesText = "x" + string(global.playerLives);
	var customColor = make_color_rgb(192, 247, 255);
	draw_set_color(customColor);
	draw_text_transformed(x+25, y+(sprite_get_height(spr_timeBar)/2), livesText, 0.5, 0.5, 0);
	draw_set_color(c_white);
}