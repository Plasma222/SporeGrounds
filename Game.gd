extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _enter_tree() -> void:
	OS.window_fullscreen=true
	$Player.position = Vector2(GlobalVar.PlayerX,GlobalVar.PlayerY)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:


		
	pass # Replace with function body.
