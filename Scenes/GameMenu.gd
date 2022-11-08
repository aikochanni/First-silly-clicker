extends Control

func _ready():
	set_process(true)

func _process(delta):
   if Input.is_action_pressed("ui_cancel"): get_tree().quit()

func _on_StartGame_pressed():
	get_tree().change_scene("res://Scenes/GameScene.tscn")
