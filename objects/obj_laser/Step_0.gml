/// @description Insert description here
// You can write your code in this editor

x = obj_player.x + sprite_get_width(obj_player.sprite_index) / 2
y = obj_player.y

for (i = 0; i < max_length; i++)
{
	x_end = x + lengthdir_x(i, direction);
	y_end = y + lengthdir_y(i, direction);
	length = i;
	
	if (collision_point(x_end, y_end, obj_enemy_parent, 0, 0))
	{
		break;	
	}
}

