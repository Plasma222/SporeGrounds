extends Area2D



func _on_Transporter1_body_entered(body: Node) -> void:
	get_tree().change_scene("res://First_Banana.tscn")
	
	
