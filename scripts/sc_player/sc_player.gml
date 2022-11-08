function shoot(hit_score)
{


	if hit_score < 0.25
	{
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet_big);
		audio_play_sound(snd_shoot_laser, 10, false);	
	}
	
	else 
	{
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_bullet);
		audio_play_sound(snd_shoot_bullet, 10, false);			
	}
	//else if hit_score < 0.5
	//{
	//	text_properties.text = "Nice!"
	//	text_properties.color = c_purple		
	//}	
	
	//else if hit_score < 0.75
	//{
	//	text_properties.text = "Ok"
	//	text_properties.color = c_green		
	//}		
	
	//else if hit_score > 1
	//{
	//	text_properties.text = "Miss"
	//	text_properties.color = c_red		
	//}
}