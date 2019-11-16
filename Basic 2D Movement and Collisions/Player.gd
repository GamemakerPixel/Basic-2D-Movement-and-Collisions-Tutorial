extends KinematicBody2D

export (int) var speed
var Velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		Velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		Velocity.x = -speed
	else:
		Velocity.x = 0
	if Input.is_action_pressed("ui_down"):
		Velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		Velocity.y = -speed
	else:
		Velocity.y = 0
	move_and_slide(Velocity)