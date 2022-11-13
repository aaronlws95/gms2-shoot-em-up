
if not is_invulnerable {
	_flash_alpha = 1;
	_hp -= other.damage;
}

is_invulnerable = true
alarm[0] = 3

if _hp <= 0 {
	instance_destroy();		
}
