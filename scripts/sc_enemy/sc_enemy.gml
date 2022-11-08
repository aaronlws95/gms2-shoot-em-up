// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemy(){
	min_height = 0 + 8
	max_height = room_height - 8
	y_spawn = random_range(min_height, obj_beat_target.bbox_top) - 16
	x_spawn = room_width + 16
	instance_create_layer(x_spawn, y_spawn, "Instances", obj_enemy_01);				
}