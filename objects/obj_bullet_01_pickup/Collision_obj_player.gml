if other.bullet_obj == obj_bullet_01 {
	other.bullet_level += 1
}
else {
	other.bullet_obj = obj_bullet_01
	other.bullet_level = 0
}

audio_play_sound(snd_bullet_pickup_01, 10, false)
instance_destroy()