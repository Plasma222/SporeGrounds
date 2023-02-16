extends Area2D
var entered=false

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.

func _process(delta):
	if entered==true:
		$Button.visible=true
		if Input.is_action_just_pressed("Action_Button"):
			get_tree().change_scene("res://Boss.tscn")
	if entered==false:
		$Button.visible=false
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Boss_Door_body_entered(body: Node) -> void:
	entered=true



func _on_Boss_Door_body_exited(body: Node) -> void:
	entered=false
	
