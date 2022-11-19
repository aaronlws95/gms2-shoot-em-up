direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)

x = obj_player.x + lengthdir_x(obj_player.sprite_width/2,direction) * 2.5
y = obj_player.y + lengthdir_y(obj_player.sprite_width/2,direction) * 2.5

_max_length = 900
for (i = 0 ; i < _max_length; i++) {
	_x_end = x + lengthdir_x(i, direction)
	_y_end = y + lengthdir_y(i, direction)
	
	_length_laser = i
	
	enemy = collision_point(_x_end, _y_end, obj_enemy_parent, 0, 0)
	if (enemy) {
		part_particles_create(obj_particle.particle_system, _x_end, _y_end, obj_particle.particle_type_hit, 1);
		part_particles_create(obj_particle.particle_system, _x_end, _y_end, obj_particle.particle_type_spark, 5);
		break;	
	}
}

if instance_exists(obj_enemy_parent) {
	_list = ds_list_create();
	_hits = collision_line_list(x, y, _x_end, _y_end, obj_enemy_parent, 0, 0, _list, 0)
	
	if _hits > 0 {
		for (k = 0; k < _hits; k++) {
			with _list[| k] {
				event_perform(ev_collision, obj_bullet_laser)
			}
		}
	}
	
	ds_list_destroy(_list)
}

event_inherited();

