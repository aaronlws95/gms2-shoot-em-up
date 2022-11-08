

song_position = get_song_position()
song_pos_in_beats = song_position / crotchet

//if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
//{

//	hit_position = (song_position - last_beat) / obj_conductor.crotchet
//	//show_debug_message(string(hit_position))
	
//	if (hit_position < 0.8)
//	{
//		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet);
//		audio_play_sound(snd_shoot_bullet, 10, false);
//	}
		
//}

if (song_position <= last_beat + crotchet)
{
	return
}



last_beat += crotchet

beats_in_advance = 5
if beat_ctr < beats_in_advance
{
	generate_beat_line(beat_ctr, beat_ctr*100 + 500, beats_in_advance)	
}
else 
{
	generate_beat_line(beat_ctr, 5*100 + 500, beats_in_advance)	
}



if beat_ctr % 10 == 0 
{
	min_height = 0 + 8
	max_height = room_height - 8
	y_spawn = random_range(min_height, max_height)
	x_spawn = room_width + 16
	instance_create_layer(x_spawn, y_spawn, "Instances", obj_enemy_01);				
}

beat_ctr += 1
