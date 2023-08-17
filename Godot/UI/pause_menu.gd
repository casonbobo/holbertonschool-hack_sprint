extends Control

@export var game_manager : GameManager

func _ready():
	hide()
	game_manager.connect("toggle_game_paused", _game_manager_pause)
	

func  _game_manager_pause(is_paused : bool):
	if(is_paused):
		show()
		Input.mouse_mode = 0
	else:
		hide()
		Input.mouse_mode = 2
