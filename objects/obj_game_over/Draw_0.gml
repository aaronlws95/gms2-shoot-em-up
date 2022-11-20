

draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

width = string_width(game_over_text)
height = string_height(game_over_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2
_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 - 75
draw_text(_x, _y, game_over_text)

score_text = "SCORE: " + string(global.player_score)
width = string_width(score_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2

draw_text(_x, _y + op_border, score_text)

player_text = "ENTER PLAYER NAME: " + name
width = string_width(player_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2

draw_text(_x, _y + op_border * 2, player_text)

cont_text = "PRESS ENTER TO CONTINUE"
width = string_width(cont_text)
height = string_height(cont_text)
_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2
draw_text(_x, _y + op_border * 3, cont_text)