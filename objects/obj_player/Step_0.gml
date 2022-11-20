
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height, room_height-sprite_height)
image_angle = point_direction(x, y, mouse_x, mouse_y)

var _up, _down, _left, _right, _shoot;

_up = keyboard_check(global.bind_up)
_down = keyboard_check(global.bind_down)
_right = keyboard_check(global.bind_right)
_left = keyboard_check(global.bind_left)
_shoot = mouse_check_button_pressed(mb_left)
_shoot_hold = mouse_check_button(mb_left)
_h_move = _right - _left;
_v_move = _down - _up;
_diag = (_up or _down) and (_left or _right)

#region Movement control

if _h_move != 0 {
	_h_speed += _h_move*_accel;
	_h_speed = clamp(_h_speed, -_max_speed, _max_speed)
}
else {
	_h_speed = lerp(_h_speed, 0, _accel)	
}

if _v_move != 0 {
	_v_speed += _v_move*_accel;
	_v_speed = clamp(_v_speed, -_max_speed, _max_speed)
}
else {
	_v_speed = lerp(_v_speed, 0, _accel)	
}

if _diag {
	_diag_speed = 0.70710678118 // sqrt(_max_speed)/_max_speed
	_h_speed *= _diag_speed;
	_v_speed *= _diag_speed;
}

x += _h_speed
y += _v_speed
#endregion

direction = image_angle

if bullet_obj == obj_bullet_laser {
	if _shoot_hold {
		if not instance_exists(obj_bullet_laser) {
			shoot(x, y, image_angle, bullet_obj, bullet_level)
		}
	}
	else {
		instance_destroy(obj_bullet_laser)
	}
}
else {
	if _shoot and _can_shoot {
		shoot(x + lengthdir_x(sprite_width/2,direction), y, image_angle, bullet_obj, bullet_level)
		alarm[0] = bullet_obj.shoot_delay;
		_can_shoot = false;
	}
	
	if instance_exists(obj_bullet_laser) {
		instance_destroy(obj_bullet_laser)
	}
}

if _flash_alpha > 0 {
	_flash_alpha -= 0.05;	
}

if _hp <= 0 {
	room_goto(rm_game_over)	
}