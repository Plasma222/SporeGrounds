extends Node2D


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
	if GlobalVar.FromWhere=="Win":
		$YouWin.visible=true
		$YouLose.visible=false
	if GlobalVar.FromWhere=="Death":
		$YouWin.visible=false
		$YouLose.visible=true

func _on_Exit_pressed() -> void:
	get_tree().quit()



func _on_Resume_pressed() -> void:
	GlobalVar.VisibleBanana1=true
	GlobalVar.VisibleBanana2=true
	GlobalVar.VisibleBanana3=true
	GlobalVar.PlayerX=-1040
	GlobalVar.PlayerY=3332
	GlobalVar.PissShard=false
	GlobalVar.MagicSpores=false
	GlobalVar.health=100
	GlobalVar.ChestOpened1=false
	GlobalVar.ChestOpened2=false
	GlobalVar.Rock=false
	GlobalVar.Paper=false
	GlobalVar.Scissors=false
	GlobalVar.VisibleGroup_1=true
	GlobalVar.VisibleGroup_2=true
	GlobalVar.VisibleRPCGroup=true
	GlobalVar.RPCLosses=0
	get_tree().change_scene("res://Game.tscn")

