extends KinematicBody2D


export var speed = 400


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var direction := Vector2.ZERO
	
	if Input.is_action_pressed("up_p1"):
		direction.y = -1
	if Input.is_action_pressed("down_p1"):
		direction.y = 1
	if Input.is_action_pressed("left_p1"):
		direction.x = -1
	if Input.is_action_pressed("right_p1"):
		direction.x = 1

	
	
	direction = direction.normalized()
	
	move_and_slide(direction * speed)

