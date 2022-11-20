
if _wave < max_wave {
	if current_time - _wave_start_time > _wave_duration[? _wave] {
		_wave += 1
		_wave_start_time = current_time
		inst = instance_create_layer(x, y, "Instances", _wave_spawner[? _wave])
		
		if _wave == 1 {
			obj_enemy_01_spawner.is_shoot = true
		}
	}
}