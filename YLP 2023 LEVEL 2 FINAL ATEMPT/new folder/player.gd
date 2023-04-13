extends KinematicBody2D

var _velocity: Vector2
var speed := 200.0


func _physics_process(delta: float) -> void:
	var input := Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		input.x -= 1
	if Input.is_action_pressed("ui_right"):
		input.x += 1
	if Input.is_action_pressed("ui_up"):
		input.y -= 1
	if Input.is_action_pressed("ui_down"):
		input.y += 1
	
	input = input.normalized()
	
	_velocity = _velocity.linear_interpolate(input *speed, 0.2)
	_velocity = move_and_slide(_velocity, Vector2.UP)
