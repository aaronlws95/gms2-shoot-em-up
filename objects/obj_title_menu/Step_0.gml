

up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_enter)

op_length = array_length(option[menu_level])

pos += down_key - up_key

if pos >= op_length {
	pos = 0	
}
if pos < 0 {
	pos = op_length - 1	
}

option[2, 0] = sc_key_to_string(global.bind_up) + " : Move Up"
option[2, 1] = sc_key_to_string(global.bind_down) + " : Move Down"
option[2, 2] = sc_key_to_string(global.bind_right) + " : Move Right"
option[2, 3] = sc_key_to_string(global.bind_left) + " : Move Left"
option[2, 4] =  "LMB : Shoot"
option[2, 5] = "Back"

if accept_key {
	
	sml = menu_level
	
	switch menu_level {
	
	case 0:
		switch pos {
			case 0:
				room_goto_next()
				break;
			case 1:
				menu_level = 1
				break;
			case 2: 
				game_end();
				break;
		}
		break;
		
	case 1:
		switch pos {
			case 0: // controls
				menu_level = 2
				break;
			case 1: // back
				menu_level -= 1
				break;					
		}
		break;
		
	case 2:
		switch pos {
			case 0:
				select_key = 0
				global.bind_up = ord("-")
				break;
			case 1:
				select_key = 1
				global.bind_down = ord("-")			
				break;			
			case 2:
				select_key = 2
				global.bind_right = ord("-")			
				break;
			case 3:
				select_key = 3
				global.bind_left = ord("-")			
				break;	
			case 4:
				break;
			case 5:
				menu_level -= 1
				break;					
		}		
		
		break;
	}
	
	if sml != menu_level {
		pos = 0	
	}
	
	op_length = array_length(option[menu_level])
}

if select_key != -1 and menu_level == 2 and keyboard_lastkey != vk_enter  {
	switch select_key {
		case 0:
			global.bind_up = keyboard_lastkey
			break
		case 1:
			global.bind_down = keyboard_lastkey
			break
		case 2:
			global.bind_right = keyboard_lastkey
			break
		case 3:
			global.bind_left = keyboard_lastkey
			break			
	}
	select_key = -1
}