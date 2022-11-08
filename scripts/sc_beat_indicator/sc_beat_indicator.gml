function generate_beat_line(beat_idx, spawn_dist, beats_in_advance){
	spawn_right = obj_beat_target.x + spawn_dist
	spawn_left = obj_beat_target.x - spawn_dist
	instance_create_layer(spawn_right, obj_beat_target.y, "Instances", obj_beat_line_01, 
							{
								spawn: spawn_right,
								target: obj_beat_target.x,  
								beat_idx: beat_idx,
								beats_in_advance: beats_in_advance
							});		
	instance_create_layer(spawn_left, obj_beat_target.y, "Instances", obj_beat_line_02, 
							{
								spawn: spawn_left,
								target: obj_beat_target.x,  
								beat_idx: beat_idx,
								beats_in_advance: beats_in_advance
							});		
}

function get_hit_score(obj, target)
{
	hit_score = (abs(obj - target) * 2 ) / obj_beat_target.sprite_width
	return hit_score
}

function handle_hit(hit_score)
{
	text_properties = {
		text: "",
		color: c_white,
	}

	if hit_score < 0.25
	{
		text_properties.text = "Awesome!"
		text_properties.color = c_white
	}
	
	else if hit_score < 0.5
	{
		text_properties.text = "Nice!"
		text_properties.color = c_purple		
	}	
	
	else if hit_score < 0.75
	{
		text_properties.text = "Ok"
		text_properties.color = c_green		
	}		
	
	else if hit_score > 1
	{
		text_properties.text = "Miss"
		text_properties.color = c_red		
	}
	
	text_inst = instance_create_layer(obj_beat_target.x, obj_beat_target.y, "Instances", obj_hit_beat_pop, text_properties);		

	text_inst.alarm[0] = (obj_conductor.last_beat + obj_conductor.crotchet) - obj_conductor.song_position
}