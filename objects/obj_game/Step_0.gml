_menu = keyboard_check(vk_escape);

if _menu and room != rm_title_screen {
	instance_deactivate_all(false)
	instance_create_layer(x, y, "Instances", obj_escape_menu)
}