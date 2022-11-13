
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height, room_height-sprite_height)
image_angle = point_direction(x, y, mouse_x, mouse_y)

var _up, _down, _left, _right, _shoot;

_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
_shoot = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space);
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

if _shoot and _can_shoot {
	shoot(x + lengthdir_x(sprite_width/2,direction), y, image_angle, bullet_obj, bullet_level)
	alarm[0] = bullet_obj.shoot_delay;
	_can_shoot = false;
}

