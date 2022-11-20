if(keyboard_lastkey != -1 and keyboard_check(vk_anykey) and string_length(name) < 3) and keyboard_lastkey != vk_backspace
{
	if (keyboard_lastkey >= 48  and keyboard_lastkey <= 57) or (keyboard_lastkey >= 65 and keyboard_lastkey <= 90) {
		name += string_upper(keyboard_lastchar);
	}
	keyboard_lastkey = -1
}

if(keyboard_lastkey != -1 and keyboard_check_pressed(vk_backspace))
{
    name = string_delete(name, string_length(name),1);
	keyboard_lastkey = -1
}

if keyboard_check_pressed(vk_enter) {
	room_goto(rm_title_screen)	
}