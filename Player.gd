extends KinematicBody2D

var movement = Vector2(0,0)
var speed = 64

func _process(delta):
	movement.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movement.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	move_and_slide(movement * speed)
	
