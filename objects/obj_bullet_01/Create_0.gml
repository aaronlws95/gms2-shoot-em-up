_h_speed = 8;
_v_speed = 8;

damage = 1;
shoot_delay = 10

effect_create_below(ef_ring, x, y, 0.05, c_white);
audio_play_sound(snd_shoot_bullet_01, 10, false);