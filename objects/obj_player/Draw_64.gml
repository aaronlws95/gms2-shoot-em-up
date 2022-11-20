padding = 30
for (i = 0; i < _hp; i++) {
	draw_sprite_ext(sp_heart, -1, 
					sp_heart.sprite_width + padding + (sp_heart.sprite_width + 100) * i,
					sp_heart.sprite_height + padding,
					1, 1, 0, c_white, 1)
}

draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

score_text = "SCORE: " + string(global.player_score)
draw_text(view_wport[0] - string_width(score_text) - padding, sp_heart.sprite_height + padding, score_text)