

if other.can_damage {
	_flash_alpha = 1;
	_hp -= other.damage;
}
if _hp <= 0 {
	instance_destroy();		
}

switch other.object_index {
	case obj_bullet_crescent: 
		other.can_damage = false
		other.alarm[0] = 3
		break;
	case obj_bullet_cannon:
		if other.can_damage {
			effect_create_below(ef_spark, other.x, other.y, 0.25, c_white)
			other.direction += random_range(140, 220)
			other.can_damage = false
		}
		break;
	case obj_bullet_01:
	default:
		instance_destroy();
		break;
}