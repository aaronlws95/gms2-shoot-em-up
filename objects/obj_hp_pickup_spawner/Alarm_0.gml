pickup = obj_hp_pickup

instance_create_layer(room_width + _padding, 
					  random_range(_padding, room_height - _padding),
					  "Instances", 
					  pickup)

alarm[0] = random_range(game_get_speed(gamespeed_fps)*25, 
						game_get_speed(gamespeed_fps)*30)