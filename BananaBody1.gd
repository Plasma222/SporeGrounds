extends KinematicBody2D

func _enter_tree() -> void:
	if GlobalVar.VisibleBanana1 == false:
		$Banana1.visible = false
		$Porter_1/CollisionShape2D.disabled=true
		$Banana_Ded_1.visible=true


func _on_Porter_1_body_entered(body: Node) -> void:
	GlobalVar.PlayerX = -1067
	GlobalVar.PlayerY = 1981
	GlobalVar.WhichBanana = "Banana_1"
	get_tree().change_scene("res://Banana.tscn")
	 


func _on_BananaGroupVision2_body_entered(body: Node) -> void:
	pass # Replace with function body.
