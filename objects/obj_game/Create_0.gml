global.font_main = fnt_kenny_pixel
global.bind_up = ord("W")
global.bind_down = ord("S")
global.bind_right = ord("D")
global.bind_left = ord("A")
global.player_score = 0

global.high_scores = []
//array_push(global.high_scores, {player_name: "Peter", player_score: 9643});
//array_push(global.high_scores, {player_name: "Ming", player_score: 3597});

if file_exists("highscores.save") {
	buffer = buffer_load("highscores.save")
	save_string = buffer_read(buffer, buffer_string)
	buffer_delete(buffer)
	global.high_scores = json_parse(save_string)
}
