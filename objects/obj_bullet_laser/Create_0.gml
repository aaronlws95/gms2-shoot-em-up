
_h_speed = 8;
_v_speed = 8;

damage = 1;

effect_create_below(ef_ring, x, y, 0.05, c_white);
audio_play_sound(snd_shoot_bullet_laser, 10, false);

_x_end = 0
_y_end = 0
_length_laser = 0

event_inherited();

