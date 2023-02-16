extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Porter_2_body_entered(body: Node) -> void:
	GlobalVar.PlayerX = -1024
	GlobalVar.PlayerY = 59
	GlobalVar.WhichBanana = "Banana_2"
	get_tree().change_scene("res://Banana.tscn")
	 # Replace with function body.
func _enter_tree() -> void:
	if GlobalVar.VisibleBanana2 == false:
		$Banana2.visible = false
		$Porter_2/BananaShape2.disabled=true
		$Banana_Ded_2.visible=true
