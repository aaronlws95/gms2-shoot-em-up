
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height, room_height-sprite_height)
image_angle = point_direction(x, y, mouse_x, mouse_y)
direction = image_angle

var _up, _down, _left, _right, _shoot;

_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("A"));
_left = keyboard_check(ord("D"));
_shoot = mouse_check_button_pressed(mb_left)

if _up {
	x += lengthdir_x(_v_speed,direction);
	y += lengthdir_y(_v_speed,direction);
}

if _down {
	x -= lengthdir_x(_v_speed,direction);
	y -= lengthdir_y(_v_speed,direction);
}

if _right {
	x += lengthdir_x(_h_speed,direction + 90);
	y += lengthdir_y(_h_speed,direction + 90);
}

if _left {
	x += lengthdir_x(_h_speed,direction - 90);
	y += lengthdir_y(_h_speed,direction - 90);
}



if _shoot and _can_shoot {
	bullet_inst = instance_create_layer(x + lengthdir_x(sprite_width/2,direction), y, "Instances", bullet_obj, {
		direction: image_angle
		});	
	alarm[0] = bullet_inst.shoot_delay;
	_can_shoot = false;
}

