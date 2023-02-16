extends KinematicBody2D
export var speed = 700
var moving_via_mouse = false
var target = Vector2()
var velocity = Vector2()

func _ready():
	$IdleLeft.visible=true
	
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
		if $IdleRight.visible==true:
			$IdleRight.visible=false
			$WalkRight.visible=true
		if $IdleLeft.visible==true:
			$IdleLeft.visible=false
			$WalkLeft.visible=true
	if Input.is_action_pressed("Down"):
		velocity.y += 1
		if $IdleRight.visible==true:
			$IdleRight.visible=false
			$WalkRight.visible=true
		if $IdleLeft.visible==true:
			$IdleLeft.visible=false
			$WalkLeft.visible=true
				
				
				
				
func _physics_process(delta):
	get_input()
	
		

		
	if Input.is_action_just_pressed("right"):
		$WalkRight.visible=true
		$WalkLeft.visible=false
		$IdleRight.visible=false
		$IdleLeft.visible=false
	if Input.is_action_just_pressed("left"):
		$WalkRight.visible=false
		$WalkLeft.visible=true
		$IdleRight.visible=false
		$IdleLeft.visible=false
	if velocity == Vector2.ZERO:
		if $WalkRight.visible==true:
			$WalkRight.visible=false
			$WalkLeft.visible=false
			$IdleRight.visible=true
			$IdleLeft.visible=false
		if $WalkLeft.visible==true:
			$WalkRight.visible=false
			$WalkLeft.visible=false
			$IdleRight.visible=false
			$IdleLeft.visible=true
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)
	velocity = Vector2.ZERO
			
			
#	pass
