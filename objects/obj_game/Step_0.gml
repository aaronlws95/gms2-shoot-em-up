_reset = keyboard_check(ord("R"));
_exit = keyboard_check(vk_escape);

if _reset {
	game_restart();	
}

if _exit {
	game_end();	
}