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
	
	if !audio_is_playing(snd_shoot_laser)
	{
		audio_play_sound(snd_shoot_laser, 10, true);
	}
}

//else if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
//{
//	if has_shot_this_beat
//	{
//		return	
//	}
	
//	hit_position = (song_position - last_beat) / obj_conductor.crotchet
//	if hit_position > 0.5
//	{
//		hit_position = 1 - hit_position	
//	}
//	show_debug_message(string(hit_position))
//	if (hit_position < 0.3)
//	{
//		instance_create_layer(x, y, "Instances", obj_bullet);
//		audio_play_sound(snd_shoot_bullet, 10, false);
//	}
	
//	has_shot_this_beat = true
//}

else if not mouse_check_button(mb_right)
{
	if instance_exists(obj_laser)
	{
		with(obj_laser) 
		{
			instance_destroy()
		}
	}
	
	if audio_is_playing(snd_shoot_laser)
	{
		audio_stop_sound(snd_shoot_laser);
	}	
}