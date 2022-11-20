up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)

op_length = array_length(option[menu_level])

if up_key or down_key {
	audio_play_sound(snd_choose_menu, 10, false)	
}

pos += down_key - up_key

if pos >= op_length {
	pos = 0	
}
if pos < 0 {
	pos = op_length - 1	
}

if accept_key {
	
	sml = menu_level
	
	switch menu_level {
	
	case 0:
		switch pos {
			case 0:
				instance_activate_all()
				instance_destroy();			
				break;
			case 1: 
				room_goto(rm_title_screen)
				break;
		}
		break;
	}
	
	if sml != menu_level {
		pos = 0	
	}
	
	op_length = array_length(option[menu_level])
}