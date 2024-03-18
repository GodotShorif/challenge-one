extends Area2D




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_MainasScore_body_entered(body):
		GlobalSignals.emit_signal("MainasScoe")
		queue_free()


