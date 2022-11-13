_flash_alpha = 1;
_hp -= other.damage;

instance_destroy(other);

if _hp <= 0 {
	instance_destroy();		
}
