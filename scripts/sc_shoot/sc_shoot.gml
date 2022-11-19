function shoot_obj_bullet_01(_x, _y, _image_angle, level) {
	switch(level) {
		default:
		case 0:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle
												});
			break;
		case 1:
			bullet_inst = instance_create_layer(_x + lengthdir_x(2, _image_angle - 90), _y + lengthdir_y(2, _image_angle - 90), "Instances", bullet_obj, {
													direction: _image_angle
												});
			bullet_inst = instance_create_layer(_x + lengthdir_x(2, _image_angle + 90), _y + lengthdir_y(2, _image_angle + 90), "Instances", bullet_obj, {
													direction: _image_angle
												});
			break;
		case 2:
			bullet_inst = instance_create_layer(_x + lengthdir_x(8, _image_angle-90), _y + lengthdir_y(8, _image_angle-90), "Instances", bullet_obj, {
													direction: _image_angle
												});
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle
												});												
			bullet_inst = instance_create_layer(_x + lengthdir_x(8, _image_angle+90), _y + lengthdir_y(8, _image_angle+90), "Instances", bullet_obj, {
													direction: _image_angle
												});			
			break;
	}	
}

function shoot_obj_bullet_cannon(_x, _y, _image_angle, level) {
	switch(level) {
		default:
		case 0:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle
												});
			break;
		case 1:
			bullet_inst = instance_create_layer(_x + lengthdir_x(2, _image_angle - 90), _y + lengthdir_y(2, _image_angle - 90), "Instances", bullet_obj, {
													direction: _image_angle - 15
												});
			bullet_inst = instance_create_layer(_x + lengthdir_x(2, _image_angle + 90), _y + lengthdir_y(2, _image_angle + 90), "Instances", bullet_obj, {
													direction: _image_angle + 15
												});
			break;
		case 2:
			bullet_inst = instance_create_layer(_x + lengthdir_x(8, _image_angle-90), _y + lengthdir_y(8, _image_angle-90), "Instances", bullet_obj, {
													direction: _image_angle - 25
												});
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle
												});												
			bullet_inst = instance_create_layer(_x + lengthdir_x(8, _image_angle+90), _y + lengthdir_y(8, _image_angle+90), "Instances", bullet_obj, {
													direction: _image_angle + 25
												});			
			break;
	}	
}

function shoot_obj_bullet_crescent(_x, _y, _image_angle, level) {
	switch(level) {
		default:
		case 0:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle,
													sprite_index: sp_bullet_crescent
												});
			break;
		case 1:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle,
													sprite_index: sp_bullet_crescent_lvl1
												});
			break;
		case 2:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle,
													sprite_index: sp_bullet_crescent_lvl2
												});		
			break;
	}	
}

function shoot(_x, _y, _image_angle, bullet_obj, level){
	switch(bullet_obj) {
		case obj_bullet_cannon:
			shoot_obj_bullet_cannon(_x, _y, _image_angle, level)
			break		
		
		case obj_bullet_01:
			default:
			shoot_obj_bullet_01(_x, _y, _image_angle, level)
			break
			
		case obj_bullet_crescent:
			default:
			shoot_obj_bullet_crescent(_x, _y, _image_angle, level)
			break			
			
	}
}