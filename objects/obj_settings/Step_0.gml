_menu = keyboard_check_pressed(vk_escape)

if _menu and room == Room1 {
	instance_deactivate_all(false)
	instance_create_layer(x, y, "Instances", obj_escape_menu)
}