if abs(ori_x - x) > room_width + sprite_width*2 + 100 {
	instance_destroy();	
}

event_inherited();

