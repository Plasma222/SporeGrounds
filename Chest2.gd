extends Area2D
var times=0
var ChestOpened = false
var Entered = false
var ItemClaimed = false

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Chest2_body_entered(body: Node) -> void:
	Entered=true
	pass # Replace with function body.


func _on_Chest2_body_exited(body: Node) -> void:
	Entered=false
	pass # Replace with function body.
func _process(delta):
	if Entered==true:
		if GlobalVar.ChestOpened2==false:
			$EButton2.visible=true
		if GlobalVar.ChestOpened2==true:
			$ChestClosed2.visible=false
			$ChestOpened2.visible=true
		if Input.is_action_just_pressed("Action_Button"):
			GlobalVar.ChestOpened2=true
			$ChestClosed2.visible=false
			$ChestOpened2.visible=true
			$EButton2.visible=false
			$Scroll.visible=true
			GlobalVar.MagicSpores=true
	if Entered==false:
		$EButton2.visible=false
		if GlobalVar.ChestOpened2==true:
			$Scroll.visible=false
			$ChestClosed2.visible=true
			$ChestOpened2.visible=false
			
