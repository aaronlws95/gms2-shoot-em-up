draw_self();

if _flash_alpha > 0 {
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
					_flash_color, _flash_alpha);
					
	shader_reset();
}