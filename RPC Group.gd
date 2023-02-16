extends Area2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _enter_tree() -> void:
	if GlobalVar.VisibleRPCGroup==false:
		$RPS_Group.visible=false
		$CollisionShape2D.disabled=true
		if GlobalVar.Rock==true:
			$Rock_Sprite.visible=true

func _on_RPC_Group_body_entered(body: Node) -> void:
	get_tree().change_scene("res://RPS.tscn")
	pass # Replace with function body.
