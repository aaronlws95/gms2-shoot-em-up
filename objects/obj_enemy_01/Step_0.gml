x -= _h_speed;

if abs(ori_x - x) > room_width + sprite_width*2 + 100 {
	instance_destroy();	
}

if is_shoot and not _has_shot {
	instance_create_layer(x, y, "Instances", obj_enemy_bullet_01);
	_has_shot = true
	alarm[0] = 30
	audio_play_sound(snd_shoot_bullet_02, 10, false);
}

event_inherited();

