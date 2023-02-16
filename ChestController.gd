extends Area2D

var times=0
var ChestOpened = false
var Entered = false
var ItemClaimed = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Area2D_body_entered(body:PhysicsBody2D) -> void:
	Entered=true
			



func _on_Area2D_body_exited(body: Node) -> void:
	Entered=false

func _process(delta):
	if Entered==true:
		if GlobalVar.ChestOpened1==false:
			$"E Button".visible=true
		if GlobalVar.ChestOpened1==true:
			$"Chest Closed".visible=false
			$ChestOpen.visible=true
		if Input.is_action_just_pressed("Action_Button"):
			GlobalVar.ChestOpened1=true
			$"Chest Closed".visible=false
			$ChestOpen.visible=true
			$"E Button".visible=false
			$Shard.visible=true
			GlobalVar.PissShard=true
	if Entered==false:
		$"E Button".visible=false
		if GlobalVar.ChestOpened1==true:
			$Shard.visible=false
			$"Chest Closed".visible=true
			$ChestOpen.visible=false
			
