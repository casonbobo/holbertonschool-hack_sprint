extends Node3D

var doorOpen = false;
@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var player = $"../Player"
@onready var door_open = $"../Node/doorOpen"
@onready var door_close = $"../Node/doorClose"
@onready var unsettling = $"../Node/Unsettling"
@onready var winning = $"../Node/Winning"
@onready var cheering = $"../Node/Cheering"


func closing():
	door_close.play()
	unsettling.playing = true
	winning.playing = false
	cheering.playing = false
	animator.play("closing")
	doorOpen = false
	print("closing")
	
func opening():
	door_open.play()
	unsettling.playing = false
	winning.playing = true
	cheering.playing = true
	animator.play("opening")
	doorOpen = true
	print("opening")

func _unhandled_input(event):
		if doorOpen == false:
			if Input.is_action_just_pressed("Interact") && player.itemCount == 6:
				opening()
				doorOpen = true
				print("interacting")
		else:
			if Input.is_action_just_pressed("Interact") && doorOpen == true:
				closing()
				doorOpen = false
				print("interacting")
		
		


