_hp = 5;
_h_speed = 2;

_flash_color = c_white;
_flash_alpha = 0;

ori_x = x

path_start(choose(path_enemy_02_0, path_enemy_02_1),
			_h_speed, path_action_stop, true)

event_inherited();