extends KinematicBody2D #Allows functions from KinematicBody2D to be used along with its parents' functions

export (int) var speed #export - allows this variable to be edited in the inspector, (int) - states that this variable is an integer and will only allow the value put in to be an integer
var Velocity = Vector2() #Vector2s store an x and y value, in this case, the left and right motion (x) and the upward and downward motion (y)

func _physics_process(delta): #Called every frame
	if Input.is_action_pressed("ui_right"): #True while the chosen input (right arrow key) is pressed
		Velocity.x = speed
	elif Input.is_action_pressed("ui_left"): #if the original if statement (line 7) and the elif statement (this line) are both false, the code in the else statement (line 11) will run
		Velocity.x = -speed
	else:
		Velocity.x = 0
	if Input.is_action_pressed("ui_down"):
		Velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		Velocity.y = -speed
	else:
		Velocity.y = 0
	move_and_slide(Velocity) #Basically adds the given vector2 (Velocity) to position, but takes into account collision shapes
