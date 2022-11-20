if not _is_hit {
	_flash_alpha = 1;
	_hp -= 1
	alarm[1] = 30
	_is_hit = true
	audio_play_sound(snd_hit_player, 10, false);
}

if _hp <= 0 {
	game_restart()	
}