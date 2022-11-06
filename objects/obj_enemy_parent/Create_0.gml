/// @description Insert description here
// You can write your code in this editor

cur_health = 1
speed = -2
hit_sound = snd_hit_enemy_01

function hit(dmg)
{

	cur_health -= dmg

	if (cur_health <= 0)
	{
		instance_destroy();
	}		
	
	//audio_play_sound(hit_sound, 10, false)
}