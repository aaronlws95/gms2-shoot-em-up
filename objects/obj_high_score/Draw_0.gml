

draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

width = string_width(high_score_text)
height = string_height(high_score_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2
_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 - 75
draw_text(_x, _y, high_score_text)

length_scores = min(3, array_length(global.high_scores))
for (i = 0; i < length_scores; i++) {
	score_text = global.high_scores[i].player_name + ": " + string(global.high_scores[i].player_score)
	width = string_width(score_text)
	_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2

	draw_text(_x, _y + op_border * (i + 1), score_text)
}

cont_text = "PRESS ENTER TO CONTINUE"
width = string_width(cont_text)
height = string_height(cont_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2
draw_text(_x, _y + op_border * (length_scores + 1), cont_text)


