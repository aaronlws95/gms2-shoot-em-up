
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height, room_height-sprite_height)
image_angle = point_direction(x, y, mouse_x, mouse_y)
direction = image_angle

var _up, _down, _left, _right, _shoot;

_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_shoot = mouse_check_button_pressed(mb_left)
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


if _shoot and _can_shoot {
	bullet_inst = instance_create_layer(x + lengthdir_x(sprite_width/2,direction), y, "Instances", bullet_obj, {
		direction: image_angle
		});	
	alarm[0] = bullet_inst.shoot_delay;
	_can_shoot = false;
}

