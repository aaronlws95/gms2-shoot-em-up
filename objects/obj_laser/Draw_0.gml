/// @description Insert description here
// You can write your code in this editor

draw_line(x, y, x_end, y_end)

for (i = 0; i < length; i++)
{
	draw_sprite_ext(sp_laser, 0, 
					x + lengthdir_x(i, direction), 
					y + lengthdir_y(i, direction),
					1, 1, 0, c_white, 1);
}