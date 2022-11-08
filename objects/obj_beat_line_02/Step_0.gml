lerp_amt = (beats_in_advance - (obj_conductor.song_pos_in_beats - beat_idx))/beats_in_advance	


if (lerp_amt > 0)
{
	x = lerp(target, spawn, lerp_amt)
}
else
{
	x = target
}

after_beat_delay = obj_conductor.crotchet // how long to wait after beat before destroying
if (obj_conductor.song_pos_in_beats >= beat_idx + beats_in_advance + after_beat_delay)
{
	instance_destroy()
}





