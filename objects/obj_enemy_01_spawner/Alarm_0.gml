
instance_create_layer(room_width + _padding, 
					  random_range(_padding, room_height - _padding),
					  "Instances", 
					  obj_enemy_01)

alarm[0] = random_range(game_get_speed(gamespeed_fps)*0.5, 
						game_get_speed(gamespeed_fps)*3)