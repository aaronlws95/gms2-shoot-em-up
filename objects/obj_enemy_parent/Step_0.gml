if _flash_alpha > 0 {
	_flash_alpha -= 0.05;	
}

if _hp <= 0 {
	instance_destroy();		
}