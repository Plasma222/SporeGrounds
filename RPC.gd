extends Control
var rng= RandomNumberGenerator.new()

var computer = 0
var result = ""
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng.randomize()
	computer = rng.randi_range(1,3)
	$"Let's Play".visible=true
	$Paper.visible=false
	$Rock.visible=false
	$Scissors.visible=false
	$Rock.disabled=true
	$Paper.disabled=true
	$Scissors.disabled=true
	$Draw.visible=false
	$Draw.disabled=true
	$Win.disabled=true
	$Win.visible=false
	$Lose.visible=false
	$Lose.disabled=true
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Rock_pressed() -> void:
	if computer==1:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Draw.visible=true
		$Draw.disabled=false
	if computer==2:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Lose.visible=true
		$Lose.disabled=false
	if computer == 3:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Win.visible=true
		$Win.disabled=false
		GlobalVar.Rock=true
	pass # Replace with function body.


func _on_Lets_Play_pressed() -> void:
	$"Let's Play".visible=false
	$"Let's Play".disabled=true
	$Paper.visible=true
	$Rock.visible=true
	$Scissors.visible=true
	$Rock.disabled=false
	$Paper.disabled=false
	$Scissors.disabled=false
	


	

func _on_Paper_pressed() -> void:
	if computer==1:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Win.visible=true
		$Win.disabled=false
	if computer==2:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Draw.visible=true
		$Draw.disabled=false
	if computer==3:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Lose.visible=true
		$Lose.disabled=false


func _on_Scissors_pressed() -> void:
	if computer==1:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Lose.visible=true
		$Lose.disabled=false
	if computer==2:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Win.visible=true
		$Win.disabled=false
	if computer==3:
		$Rock.visible=false
		$Paper.visible=false
		$Scissors.visible=false
		$Rock.disabled=true
		$Paper.disabled=true
		$Scissors.disabled=true
		$Draw.visible=true
		$Draw.disabled=false


func _on_Win_pressed() -> void:
	GlobalVar.PlayerX=-4288
	GlobalVar.PlayerY=688
	get_tree().change_scene("res://Game.tscn")
	GlobalVar.VisibleRPCGroup=false
	


func _on_Draw_pressed() -> void:
	rng.randomize()
	computer = rng.randi_range(1,3)
	$"Let's Play".visible=true
	$"Let's Play".disabled=false
	$Paper.visible=false
	$Rock.visible=false
	$Scissors.visible=false
	$Rock.disabled=true
	$Paper.disabled=true
	$Scissors.disabled=true
	$Draw.visible=false
	$Draw.disabled=true
	$Win.disabled=true
	$Win.visible=false
	$Lose.visible=false
	$Lose.disabled=true
	

func _on_Lose_pressed() -> void:
	GlobalVar.RPCLosses = GlobalVar.RPCLosses + 1
	if GlobalVar.RPCLosses==2:
		get_tree().change_scene("res://Death_Scene.tscn")
	else:
		get_tree().change_scene("res://Game.tscn")
	
