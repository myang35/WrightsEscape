/// @description 
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

draw_text_ext(x, y, text, 50, 725);

if (global.gameStart == false) draw_text_transformed(512, 640, "Press any button to go back", .75, .75, image_angle);