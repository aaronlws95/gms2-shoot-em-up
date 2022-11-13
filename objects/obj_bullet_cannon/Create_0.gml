_h_speed = 8;
_v_speed = 8;
_hit_horizontal_edge = false
_hit_vertical_edge = false

damage = 2;
shoot_delay = 20

effect_create_below(ef_smoke, x, y, 0.05, c_dkgray);
audio_play_sound(snd_shoot_bullet_01, 10, false);

alarm[0] = 180