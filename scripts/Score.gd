extends Area2D




func _ready():
	pass
	



func _on_Score_body_entered(body):
	GlobalSignals.emit_signal("change_score")
	queue_free()


