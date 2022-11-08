/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("W")) or keyboard_check(vk_up) 
{
	y -= move_speed;	
}

if keyboard_check(ord("S")) or keyboard_check(vk_down) 
{
	y += move_speed;	
}

if keyboard_check(ord("A")) or keyboard_check(vk_left) 
{
	x -= move_speed;
}

if keyboard_check(ord("D")) or keyboard_check(vk_right) 
{
	x += move_speed;
}

max_height = obj_beat_target.bbox_top 
x = clamp(x, 0 + sprite_get_width(sprite_index) / 2, room_width - sprite_get_width(sprite_index) / 2);
y = clamp(y, 0 + sprite_get_height(sprite_index) / 2, max_height - sprite_get_height(sprite_index) / 2);

if (obj_conductor.song_position > last_beat + obj_conductor.crotchet)
{
	last_beat += obj_conductor.crotchet;
}

if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
{
	with obj_beat_line_01
	{
		if place_meeting(x, y, obj_beat_target)
		{			
			instance_destroy();
	
			hit_score = get_hit_score(x, obj_beat_target.x)
			handle_hit(hit_score)
			shoot(hit_score)
			obj_player.has_shot = true
		}
	}
	with obj_beat_line_02
	{	
		if place_meeting(x, y, obj_beat_target)
		{	
			instance_destroy()
		}
	}
	
	if not has_shot
	{
		handle_hit(100)	
	}
	
	has_shot = false
}

//if mouse_check_button(mb_right)
//{
//	if !instance_exists(obj_laser)
//	{
//		instance_create_layer(x, y, "Instances", obj_laser);
//	}
	
//	if !audio_is_playing(snd_shoot_laser)
//	{
//		audio_play_sound(snd_shoot_laser, 10, true);
//	}
//}

//else if not mouse_check_button(mb_right)
//{
//	if instance_exists(obj_laser)
//	{
//		with(obj_laser) 
//		{
//			instance_destroy()
//		}
//	}
	
//	if audio_is_playing(snd_shoot_laser)
//	{
//		audio_stop_sound(snd_shoot_laser);
//	}	
//}