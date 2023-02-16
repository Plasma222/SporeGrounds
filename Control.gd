extends Control
var rng= RandomNumberGenerator.new()
var rng2=RandomNumberGenerator.new()
var Spore_Succeed=false
var Spore_Damage=0
var Spore=false
var Spore_Turns=0
var banana_health = 0
var WhichAnimationMushroom=""
var WhichAnimationBanana=""
var oldhealth=0
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ProgressBar.value=GlobalVar.health
	$Attack.visible=true
	$Attack.disabled=false
	$Punch.visible=false
	$Punch.disabled=true
	$Stab.visible=false
	$Stab.disabled=true
	$Spores.visible=false
	$Spores.disabled=true
	$Attack_Back.visible=false
	$Attack_Back.disabled=true
	$Banana.play("Idle")
	if GlobalVar.WhichBanana=="Group_1":
		banana_health=250
		$Banana_Group/Banana_Group_Health.max_value=250
		$Banana_Group/Banana_Group_Health.value=banana_health
		$Banana_Group.visible=true
		$Banana_Group/Banana_Group_Health.visible=true
		$Banana_Group.play("Idle")
		$Banana.visible=false
	if GlobalVar.WhichBanana=="Banana_1":
		banana_health=100
		$Banana/BananaHealth.max_value=100
		$Banana/BananaHealth.value=banana_health
	if GlobalVar.WhichBanana=="Banana_2":
		banana_health=150
		$Banana/BananaHealth.max_value=150
		$Banana/BananaHealth.value=banana_health
	if GlobalVar.WhichBanana=="Banana_3":
		banana_health=150
		$Banana/BananaHealth.max_value=150
		$Banana/BananaHealth.value=banana_health
	if GlobalVar.WhichBanana=="Group_2":
		banana_health=250
		$Banana_Group/Banana_Group_Health.max_value=250
		$Banana_Group/Banana_Group_Health.value=banana_health
		$Banana.visible=false
		$Banana_Group.visible=true
		$Banana_Group/Banana_Group_Health.visible=true
		$Banana_Group.play("Idle")
	if GlobalVar.PissShard==true:
		$Mushy.play("YellowIdle")
	if GlobalVar.PissShard==false:
		$Mushy.play("Idle")
	WhichAnimationMushroom="Idle"
	WhichAnimationBanana="Idle"
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass





		
	






func _on_Mushy_animation_finished() -> void:
	if WhichAnimationMushroom=="Punch":
		if GlobalVar.WhichBanana=="Group_1":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value=GlobalVar.health
		if GlobalVar.WhichBanana=="Group_2":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_1":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_2":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_3":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
	if WhichAnimationMushroom=="Stab":
		if GlobalVar.WhichBanana=="Group_1":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Group_2":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_1":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_2":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_3":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
	if WhichAnimationMushroom=="Spore":
		if GlobalVar.WhichBanana=="Group_1":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Group_2":
			$Banana_Group.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-10
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_1":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_2":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
		if GlobalVar.WhichBanana=="Banana_3":
			$Banana.play("Attack")
			oldhealth=GlobalVar.health
			GlobalVar.health=GlobalVar.health-5
			WhichAnimationBanana="Attack"
			$Mushy.play("Hit")
			$ProgressBar.value= GlobalVar.health
	
	


	
	






func _on_Punch_pressed() -> void:
	$Mushy.play("Attack")
	WhichAnimationMushroom = "Punch"
	banana_health=banana_health-10
	$Banana/BananaHealth.value=banana_health
	if GlobalVar.WhichBanana=="Group_1":
		$Banana_Group.play("Hit")
	elif GlobalVar.WhichBanana=="Group_2":
		$Banana.play("Hit")
	elif GlobalVar.WhichBanana=="Banana_1":
		$Banana.play("Hit")
	elif GlobalVar.WhichBanana=="Banana_2":
		$Banana.play("Hit")
	elif GlobalVar.WhichBanana=="Banana_3":
		$Banana.play("Hit")
	WhichAnimationBanana="Hit"
	$Banana_Group/Banana_Group_Health.value=banana_health
	if Spore==true:
		rng2.randomize()
		Spore_Damage=rng2.randi_range(15,30)
		Spore_Turns=Spore_Turns-1
		banana_health=banana_health-Spore_Damage
		$Banana/BananaHealth.value=banana_health
		$Banana_Group/Banana_Group_Health.value=banana_health
		if Spore_Turns==0:
			Spore=false
	$Attack.visible=true
	$Attack.disabled=false
	$Punch.visible=false
	$Punch.disabled=true
	$Spores.visible=false
	$Spores.disabled=true
	$Stab.visible=false
	$Stab.disabled=true
	$Attack_Back.visible=false
	$Attack_Back.disabled=true
		
	
func _on_Spores_pressed() -> void:
	rng.randomize()
	$Mushy.play("Spore")
	WhichAnimationMushroom="Spore"
	if Spore_Turns >=10:
		pass
	else:
		Spore_Turns = Spore_Turns + rng.randi_range(0,4)
	if Spore_Turns>0:
		Spore=true
	if Spore==true:
		rng2.randomize()
		Spore_Damage=rng2.randi_range(15,30)
		Spore_Turns=Spore_Turns-1
		banana_health=banana_health-Spore_Damage
		$Banana/BananaHealth.value=banana_health
		$Banana_Group/Banana_Group_Health.value=banana_health
		if Spore_Turns==0:
			Spore=false
	$Attack.visible=true
	$Attack.disabled=false
	$Punch.visible=false
	$Punch.disabled=true
	$Spores.visible=false
	$Spores.disabled=true
	$Stab.visible=false
	$Stab.disabled=true
	$Attack_Back.visible=false
	$Attack_Back.disabled=true


func _on_Attack_Back_pressed() -> void:
	$Attack.visible=true
	$Attack.disabled=false
	$Punch.visible=false
	$Punch.disabled=true
	$Spores.visible=false
	$Spores.disabled=true
	$Stab.visible=false
	$Stab.disabled=true
	$Attack_Back.visible=false
	$Attack_Back.disabled=true
	





func _on_Stab_pressed() -> void:
	$Mushy.play("YellowAttack")
	WhichAnimationMushroom="Stab"
	banana_health=banana_health-50
	$Banana/BananaHealth.value=banana_health
	$Banana_Group/Banana_Group_Health.value=banana_health
	if GlobalVar.WhichBanana=="Group_1"or"Group_2":
		$Banana_Group.play("Hit")
	else:
		$Banana.play("Hit")
	WhichAnimationBanana="Hit"
	if Spore==true:
		rng2.randomize()
		Spore_Damage=rng2.randi_range(15,30)
		Spore_Turns=Spore_Turns-1
		banana_health=banana_health-Spore_Damage
		$Banana/BananaHealth.value=banana_health
		$Banana_Group/Banana_Group_Health.value=banana_health
		if Spore_Turns==0:
			Spore=false
	$Attack.visible=true
	$Attack.disabled=false
	$Punch.visible=false
	$Punch.disabled=true
	$Spores.visible=false
	$Spores.disabled=true
	$Stab.visible=false
	$Stab.disabled=true
	$Attack_Back.visible=false
	$Attack_Back.disabled=true


func _on_Attack_pressed() -> void:
	if WhichAnimationBanana == "Idle" and WhichAnimationMushroom=="Idle":
		$Attack.visible=false
		$Attack.disabled=true
		$Punch.visible=true
		$Punch.disabled=false
		$Attack_Back.visible=true
		$Attack_Back.disabled=false
		if GlobalVar.PissShard==true:
			$Stab.visible=true
			$Stab.disabled=false
		if GlobalVar.MagicSpores==true:
			$Spores.visible=true
			$Spores.disabled=false
	
func _process(delta: float) -> void:
	if WhichAnimationBanana=="Idle" and WhichAnimationMushroom=="Idle":
		if banana_health<=0:
			if GlobalVar.WhichBanana=="Banana_1":
				GlobalVar.VisibleBanana1=false
			elif GlobalVar.WhichBanana=="Banana_2":
				GlobalVar.VisibleBanana2=false
			elif GlobalVar.WhichBanana=="Banana_3":
				GlobalVar.VisibleBanana3=false
			elif GlobalVar.WhichBanana=="Group_1":
				GlobalVar.VisibleGroup_1=false
			elif GlobalVar.WhichBanana=="Group_2":
				GlobalVar.VisibleGroup_2=false
			GlobalVar.health=100
			get_tree().change_scene("res://Game.tscn")
		if GlobalVar.health<=0:
			get_tree().change_scene("res://Death_Scene.tscn")
			GlobalVar.FromWhere="Death"
			
	

func _on_Banana_animation_finished() -> void:
	if WhichAnimationBanana=="Attack":
		if GlobalVar.WhichBanana=="Group_1":
			$Banana_Group.play("Idle")
			WhichAnimationBanana="Idle"
			if GlobalVar.PissShard==true:
				$Mushy.play("YellowIdle")
				WhichAnimationMushroom="Idle"
			else:
				$Mushy.play("Idle")
				WhichAnimationMushroom="Idle"
		elif GlobalVar.WhichBanana=="Group_2":
			$Banana_Group.play("Idle")
			WhichAnimationBanana="Idle"
			if GlobalVar.PissShard==true:
				$Mushy.play("YellowIdle")
				WhichAnimationMushroom="Idle"
			else:
				$Mushy.play("Idle")
				WhichAnimationMushroom="Idle"
		if GlobalVar.WhichBanana=="Banana_1":
			$Banana.play("Idle")
			WhichAnimationBanana="Idle"
			if GlobalVar.PissShard==true:
				$Mushy.play("YellowIdle")
				WhichAnimationMushroom="Idle"
			else:
				$Mushy.play("Idle")
				WhichAnimationMushroom="Idle"
		if GlobalVar.WhichBanana=="Banana_2":
			$Banana.play("Idle")
			WhichAnimationBanana="Idle"
			if GlobalVar.PissShard==true:
				$Mushy.play("YellowIdle")
				WhichAnimationMushroom="Idle"
			else:
				$Mushy.play("Idle")
				WhichAnimationMushroom="Idle"
		if GlobalVar.WhichBanana=="Banana_3":
			$Banana.play("Idle")
			WhichAnimationBanana="Idle"
			if GlobalVar.PissShard==true:
				$Mushy.play("YellowIdle")
				WhichAnimationMushroom="Idle"
			else:
				$Mushy.play("Idle")
				WhichAnimationMushroom="Idle"

