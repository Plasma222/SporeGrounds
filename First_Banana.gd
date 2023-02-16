extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _on_enter_scene() -> void:
	if GlobalVar.PissShard==true:
		$Control/RegMushy.visible=false
		$Control/YellowMushy.visible=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Banana_animation_finished() -> void:
	pass # Replace with function body.
