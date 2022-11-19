pickup = choose(obj_bullet_cannon_pickup, 
				obj_bullet_crescent_pickup,
				obj_bullet_01_pickup,
				obj_bullet_laser_pickup)

instance_create_layer(room_width + _padding, 
					  random_range(_padding, room_height - _padding),
					  "Instances", 
					  pickup)

alarm[0] = random_range(game_get_speed(gamespeed_fps)*3, 
						game_get_speed(gamespeed_fps)*5)