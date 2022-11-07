lerp_amt = (beats_shown_in_advance - (obj_conductor.song_pos_in_beats - beat_idx))/beats_shown_in_advance


if (lerp_amt > 0)
{
	x = lerp(target, spawn, lerp_amt)
}

if x == prev_x and abs(x - target) < 10 
{
	//show_debug_message(obj_conductor.beat_ctr)
	instance_destroy()
}	

prev_x = x



