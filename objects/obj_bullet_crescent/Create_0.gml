_is_turn_back = false


_max_speed = 8
_cur_speed = _max_speed

damage = 3;
shoot_delay = 30

effect_create_below(ef_ring, x, y, 0.05, c_white);
audio_play_sound(snd_shoot_bullet_01, 10, false);