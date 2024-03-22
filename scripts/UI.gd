extends Control
 


var score_count = 0

var player_score = 0

var My_Timer = 60



func _ready():
	$MyTimer.start()
	GlobalSignals.connect("change_score", self, "_change_score")
	GlobalSignals.connect("MainasScoe", self, "_MainasScoe")
	GlobalSignals.connect("Score", self, "_Score")
	GlobalSignals.connect("change_score_2", self, "_change_score_2")
	GlobalSignals.connect("MainasScoe2", self, "_MainasScoe2")



func _change_score_2():
	player_score += 1
	$Label2.text = "Player2 Score: "+str(player_score)


func _MainasScoe2():
	player_score -= 1
	$Label2.text = "Player2 Score: "+str(player_score)



func _change_score():
	score_count += 1
	$Label.text = "Player1 Score: "+str(score_count)


func _MainasScoe():
	score_count -= 1
	$Label.text = "Player1 Score: "+str(score_count)
	
	
	
	
	
	
#
#func _change_score_2():
#	if body.is_in_group("player1"):
#		$Label2.text = "Player2 Score: "+str(score_count)





func _on_MyTimer_timeout():
	My_Timer -= 1
	$NewTimeLabel.text = "Timer :"+str(My_Timer)
