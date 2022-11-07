function generate_beat_line(beat_idx){
	spawn_dist = 1000
	spawn_right = obj_beat_target.x + spawn_dist
	spawn_left = obj_beat_target.x - spawn_dist
	instance_create_layer(spawn_right, obj_beat_target.y, "Instances", obj_beat_line_01, 
							{
								spawn: spawn_right,
								target: obj_beat_target.x,  
								beat_idx: beat_idx
							});		
	//instance_create_layer(spawn_left, obj_beat_target.y, "Instances", obj_beat_line_01, 
	//						{
	//							spawn: spawn_left,
	//							target: obj_beat_target.x,  
	//							beat_idx: beat_idx
	//						});		
}

//function initialize_beat_lines(beat_node_speed, n){
//		for (i = 1; i <= n; i ++) 
//		{
//			generate_beat_line(beat_node_speed, i)
//		}
//}

//function generate_beat_line(beat_node_speed, dist_from_target){
//	pixel_per_beat = game_get_speed(gamespeed_fps) * crotchet * beat_node_speed
//	beat_node_x_right = obj_beat_target.x + dist_from_target * pixel_per_beat
//	beat_node_x_left = obj_beat_target.x - dist_from_target * pixel_per_beat
//	instance_create_layer(beat_node_x_right, obj_beat_target.y, "Instances", obj_beat_line_01, 
//							{
//								speed: -beat_node_speed
//							});		
//	instance_create_layer(beat_node_x_left, obj_beat_target.y, "Instances", obj_beat_line_01, 
//							{
//								speed: beat_node_speed
//							});		
//}