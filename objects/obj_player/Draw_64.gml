padding = 30
for (i = 0; i < _hp; i++) {
	draw_sprite_ext(sp_heart, -1, 
					sp_heart.sprite_width + padding + (sp_heart.sprite_width + 100) * i,
					sp_heart.sprite_height + padding,
					1, 1, 0, c_white, 1)
}