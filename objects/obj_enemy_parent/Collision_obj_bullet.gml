/// @description Insert description here
// You can write your code in this editor

instance_destroy(other)

audio_play_sound(hit_sound, 10, false)

health -= 1

if (health <= 0)
{
	instance_destroy();
}