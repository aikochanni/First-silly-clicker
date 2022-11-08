extends Control

onready var score = 0
onready var pclick = 1
onready var psecond = 1
onready var price_1pc = 2
onready var price_1ps = 5

func _ready():
	set_process(true)

func _process(delta): 
   if Input.is_action_pressed("ui_cancel"): get_tree().quit()
   $Points.text = str("Points: ",score)

func _on_TextureButton_pressed():
	score += pclick


func _on_1PC_pressed():
	if score >= price_1pc:
		pclick = pclick + 1
		score -= price_1pc
		price_1pc += round(price_1pc * 1.2)
		$PC1.text = str("czekoladka - 1PC - ",price_1pc)
		$PerClick.text = str("per click: ",pclick," ")
	
func _on_1PS_pressed():
	if score >= price_1ps:
		psecond = psecond + 1
		score -= price_1ps
		price_1ps += round(price_1ps * 1.2)
		$PS1.text = str("cukiernik - 1PS - ",price_1ps)
		$PerSec.text = str(" per sec: ",psecond)

func _on_Timer_timeout():
	score += psecond
