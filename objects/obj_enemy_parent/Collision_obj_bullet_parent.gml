if other.can_damage {
	_flash_alpha = 1;
	_hp -= other.damage;
}


with (other) {
	switch object_index {
		case obj_bullet_crescent: 
			can_damage = false
			alarm[0] = 3
			break;
		case obj_bullet_cannon:
			if can_damage {
				effect_create_below(ef_spark, x, y, 0.25, c_white)
				direction += random_range(140, 220)
				can_damage = false
				alarm[1] = 3
			}
			break;
		case obj_bullet_laser:
			if can_damage {
				can_damage = false	
				alarm[0] = 10
			}
			break;
		case obj_bullet_01:
		default:
			instance_destroy();
			break;
	}
}