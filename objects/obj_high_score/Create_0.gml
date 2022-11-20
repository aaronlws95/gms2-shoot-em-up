high_score_text = "HIGH SCORE"

op_border = 32

name = ""

can_type = true

array_sort(global.high_scores, function(a, b) { return a.player_score < b.player_score; });