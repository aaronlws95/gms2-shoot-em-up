image_angle += 30

x += lengthdir_x(_cur_speed,direction);
y += lengthdir_y(_cur_speed,direction);


if _cur_speed > 0 and not _is_turn_back {
	_cur_speed = lerp(_cur_speed, 0, 0.05)
}
else {
	_cur_speed = _max_speed
	_is_turn_back = true
	direction = point_direction(x, y, obj_player.x, obj_player.y)
}