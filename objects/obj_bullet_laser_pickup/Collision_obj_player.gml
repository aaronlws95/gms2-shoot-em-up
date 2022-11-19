if other.bullet_obj == obj_bullet_laser {
	other.bullet_level += 1
	
	if instance_exists(obj_bullet_laser) {
		instance_destroy(obj_bullet_laser)		
	}
}
else {
	other.bullet_obj = obj_bullet_laser
	other.bullet_level = 0
}

audio_play_sound(snd_bullet_pickup_01, 10, false)
instance_destroy()