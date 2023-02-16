extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"



func _enter_tree() -> void:
	if GlobalVar.VisibleBanana3 == false:
		$Banana3.visible = false
		$Porter_3/CollisionShape2D.disabled=true
		$Banana_Ded_3.visible=true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Porter_3_body_entered(body: Node) -> void:
	GlobalVar.PlayerX = -2296
	GlobalVar.PlayerY = 1088
	GlobalVar.WhichBanana = "Banana_3"
	get_tree().change_scene("res://Banana.tscn")
	
