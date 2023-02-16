extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _enter_tree() -> void:
	if GlobalVar.VisibleGroup_2==false:
		$BananaGroupVision2/BananaGroupCollision.disabled=true
		$BGD2.visible=true
		$BananaGroup2.visible=false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_BananaGroupVision2_body_entered(body: Node) -> void:
	GlobalVar.WhichBanana="Group_2"
	GlobalVar.PlayerX=-4320
	GlobalVar.PlayerY=-2688
	get_tree().change_scene("res://Banana.tscn")
	
