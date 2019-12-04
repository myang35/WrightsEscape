/// @description Insert description here
// You can write your code in this editor
//enable shader
shader_set(shader0);
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);

//draw outlined sprite
draw_self();
shader_reset();