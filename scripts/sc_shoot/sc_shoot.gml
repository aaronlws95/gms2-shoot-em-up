function shoot_obj_bullet_01(_x, _y, _image_angle, level) {
	switch(level) {
		default:
		case 0:
			bullet_inst = instance_create_layer(_x, _y, "Instances", bullet_obj, {
													direction: _image_angle
												});
			break;
		case 1:
			bullet_inst = instance_create_layer(_x, _y - lengthdir_y(2, _image_angle), "Instances", bullet_obj, {
													direction: _image_angle
												});
			bullet_inst = instance_create_layer(_x, _y + lengthdir_y(2, _image_angle), "Instances", bullet_obj, {
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

function shoot(_x, _y, _image_angle, bullet_obj, level){
	switch(bullet_obj) {
		default:
		case obj_bullet_01 :
			shoot_obj_bullet_01(_x, _y, _image_angle, level)
			break
			
	}
}