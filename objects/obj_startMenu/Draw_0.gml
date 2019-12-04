/// @description Draws the menu options
draw_set_halign(fa_left);
draw_set_valign(fa_center)

var i = 0;
repeat (buttons) {
	customColor = make_color_rgb(93, 170, 180);
	draw_set_color(customColor);
	draw_set_font(fnt_default);
	
	if (menuIndex == i) {
		draw_set_color(c_white); 
		draw_set_font(fnt_emphasize);
	}
	
	draw_text(x, y + buttonH * i, button[i]);
	i++;
}
