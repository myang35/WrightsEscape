/// @description Draws the menu options

var i = 0;
repeat (buttons) {
	customColor = make_color_rgb(93, 170, 180);
	draw_set_color(customColor);
	draw_set_font(fnt_default);
	
	if (menuIndex == i) {
		draw_set_color(c_white); 
		draw_set_font(fnt_selected);
	}
	
	draw_text(menuX, menuY + buttonH * i, button[i]);
	i++;
}
