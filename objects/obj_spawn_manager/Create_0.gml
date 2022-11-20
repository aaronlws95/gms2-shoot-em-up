_wave = 0
_wave_start_time = current_time

max_wave = 1

_wave_duration = ds_map_create()
ds_map_add(_wave_duration, 0, 10000)
ds_map_add(_wave_duration, 1, 30000)

_wave_spawner = ds_map_create()
ds_map_add(_wave_spawner, 0, obj_enemy_01_spawner)
ds_map_add(_wave_spawner, 1, obj_enemy_02_spawner)

instance_create_layer(x, y, "Instances", _wave_spawner[? _wave])