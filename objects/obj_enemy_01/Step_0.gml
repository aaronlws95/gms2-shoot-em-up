x -= _h_speed;

if abs(ori_x - x) > room_width + sprite_width {
	instance_destroy();	
}

event_inherited();

