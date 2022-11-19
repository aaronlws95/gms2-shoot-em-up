//if _x_end != 0 and _y_end != 0 {
//	draw_line(x, y, _x_end, _y_end)
//}

for (j = 0; j < _length_laser; j++) {
	if j < 5 {
		draw_sprite_ext(sprite_index, 0,
						x, 
						y,  	
						1, 1, 
						direction, 
						c_white, 
						1)	
	}
	else {
		draw_sprite_ext(sprite_index, 1,
						x + lengthdir_x(j, direction), 
						y + lengthdir_y(j, direction),  	
						1, 1, 
						direction, 
						c_white, 
						1)
	}
}