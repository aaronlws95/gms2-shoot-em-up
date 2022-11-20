_menu = keyboard_check_pressed(vk_escape);
_kill_player = keyboard_check_pressed(ord("X"));

if _menu and room != rm_title_screen {
	instance_deactivate_all(false)
	instance_create_layer(x, y, "Instances", obj_escape_menu)
}

if _kill_player and room == Room1 {
	obj_player._hp = 0	
}