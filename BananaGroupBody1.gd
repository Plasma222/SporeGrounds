extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _enter_tree() -> void:
	if GlobalVar.VisibleGroup_1==false:
		$BananaGroupVision1/BananaGroup1.visible=false
		$BananaGroupVision1/BananaGroupCollision1.disabled=true
		$BananaGroupVision1/BGD1.visible=true
	


func _on_Area2D_body_entered(body: Node) -> void:
	GlobalVar.PlayerX=2000
	GlobalVar.PlayerY=-5640
	GlobalVar.WhichBanana="Group_1"
	get_tree().change_scene("res://Banana.tscn")
