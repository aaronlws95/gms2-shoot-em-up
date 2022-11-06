/// @description Insert description here
// You can write your code in this editor


song_position = (audio_sound_get_track_position(song) - song_start_time) * pitch - offset

if (song_position > last_beat + crotchet)
{
	last_beat += crotchet	

	if ctr % 1 == 0
	{
		instance_create_layer(beat_node_x, obj_beat_target.y, "Instances", obj_beat_node_01, 
								{
									speed: -beat_node_speed
								});		
	}
	
	if ctr % 10 == 0 
	{
		min_height = 0 + 8
		max_height = room_height - 8
		y_spawn = random_range(min_height, max_height)
		x_spawn = room_width + 16
		instance_create_layer(x_spawn, y_spawn, "Instances", obj_enemy_01);				
	}
	ctr += 1
}
