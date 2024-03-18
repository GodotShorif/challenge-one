extends Control
 


var score_count = 0

var player_score = 0

var My_Timer = 60



func _ready():
	$MyTimer.start()
	GlobalSignals.connect("change_score", self, "_change_score")
	GlobalSignals.connect("MainasScoe", self, "_MainasScoe")
	GlobalSignals.connect("Score", self, "_Score")



func _score():
	player_score += 1
	$Label2.text = "Player2 Score: "+str(player_score)



func _change_score():
	score_count += 1
	$Label.text = "Player1 Score: "+str(score_count)


func _MainasScoe():
	score_count -= 1
	$Label.text = "Player1 Score: "+str(score_count)
	





func _on_MyTimer_timeout():
	My_Timer -= 1
	$NewTimeLabel.text = "Timer :"+str(My_Timer)
