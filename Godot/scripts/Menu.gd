extends Node2D

@onready var quit_button: Button = find_child("Quit")

func _ready() -> void:
	quit_button.pressed.connect(get_tree().quit)

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Level1.tscn")
