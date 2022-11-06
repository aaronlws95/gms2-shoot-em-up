/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("W"))
{
	y -= move_speed;	
}

if keyboard_check(ord("S"))
{
	y += move_speed;	
}

if keyboard_check(ord("A"))
{
	x -= move_speed;
}

if keyboard_check(ord("D"))
{
	x += move_speed;
}

x = clamp(x, 0 + sprite_get_width(sprite_index) / 2, room_width - sprite_get_width(sprite_index) / 2);
y = clamp(y, 0 + sprite_get_height(sprite_index) / 2, room_height - sprite_get_height(sprite_index) / 2);

if mouse_check_button(mb_right)
{
	if !instance_exists(obj_laser)
	{
		instance_create_layer(x, y, "Instances", obj_laser);
	}
	
	if !audio_is_playing(snd_shoot_rmb)
	{
		audio_play_sound(snd_shoot_rmb, 10, false);
	}
}

else if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_shoot_lmb, 10, false);
}

else if not mouse_check_button(mb_right)
{
	if instance_exists(obj_laser)
	{
		with(obj_laser) 
		{
			instance_destroy()
		}
	}
}