function new_song(song_id, bpm, offset){	
	if audio_is_playing(obj_conductor.song)
	{
		audio_stop_sound(obj_conductor.song)
	}
	
	obj_conductor.song_position = 0 // current position of song
	obj_conductor.last_beat = 0 // time of last beat
	obj_conductor.beat_ctr = 0 // current beat number
	obj_conductor.crotchet = 60 / bpm // seconds per beat
	obj_conductor.offset = offset

	obj_conductor.song = audio_play_sound(song_id, 100, false)

	obj_conductor.pitch = audio_sound_get_pitch(obj_conductor.song)
	obj_conductor.song_start_time = audio_sound_get_track_position(obj_conductor.song) // time since song started

	with (obj_beat_line_01) {
		instance_destroy()
	}

}

function get_song_position()
{
	return (audio_sound_get_track_position(obj_conductor.song) - obj_conductor.song_start_time) * obj_conductor.pitch - obj_conductor.offset	
}