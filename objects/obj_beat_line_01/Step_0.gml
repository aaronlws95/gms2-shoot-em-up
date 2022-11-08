lerp_amt = (beats_in_advance - (obj_conductor.song_pos_in_beats - beat_idx))/beats_in_advance	


if (lerp_amt > 0)
{
	x = lerp(target, spawn, lerp_amt)
}
else
{
	x = target
}
//else 
//{
//	x = target
//}

if (obj_conductor.song_pos_in_beats >= beat_idx + beats_in_advance + obj_conductor.crotchet)
{
	instance_destroy()
}





