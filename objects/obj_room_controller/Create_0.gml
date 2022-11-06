/// @description Insert description here
// You can write your code in this editor

song_obj = snd_room_1

song = audio_play_sound(song_obj, 100, false)

bpm = 140
crotchet = 60 / bpm // seconds per beat
offset = 0.2 // gap at the beginning of mp3
song_position = 0; // current position of song
pitch = audio_sound_get_pitch(song)
song_start_time = audio_sound_get_track_position(song) // time since song started
last_beat = 0

ctr = 0
beat_node_speed = 5
pixel_per_beat = game_get_speed(gamespeed_fps) * crotchet * beat_node_speed
beat_node_x = obj_beat_target.x + 20 * pixel_per_beat