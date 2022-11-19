
_hit_horizontal_edge = x + lengthdir_x(sprite_width/2, direction) > room_width or x + lengthdir_x(sprite_width/2, direction) < 0

_hit_vertical_edge = y + lengthdir_y(sprite_height/2, direction) > room_height or y + lengthdir_y(sprite_height/2, direction) < 0
						
if _hit_horizontal_edge or _hit_vertical_edge {
	   effect_create_below(ef_spark, x, y, 0.25, c_white);
}						

if _hit_horizontal_edge {
	_h_speed *= -1	
}

if _hit_vertical_edge {
	_v_speed *= -1	
}

x += lengthdir_x(_h_speed,direction);
y += lengthdir_y(_v_speed,direction);

// Don't inherit
//event_inherited();
