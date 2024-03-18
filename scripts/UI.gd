extends Control
 


var score_count = 0


var My_Timer = 60



func _ready():
	$MyTimer.start()
	GlobalSignals.connect("change_score", self, "_change_score")
	GlobalSignals.connect("MainasScoe", self, "_MainasScoe")

func _change_score():
	score_count += 1
	$Label.text = "Score:"+str(score_count)


func _MainasScoe():
	score_count -= 1
	$Label.text = "Score:"+str(score_count)
	





func _on_MyTimer_timeout():
	My_Timer -= 1
	$NewTimeLabel.text = "Timer :"+str(My_Timer)
