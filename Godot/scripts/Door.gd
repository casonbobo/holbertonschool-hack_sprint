extends Node3D

var doorOpen = false;
@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var player = $"../Player"
@onready var door_open = $"../Node/doorOpen"
@onready var door_close = $"../Node/doorClose"
@onready var unsettling = $"../Node/Unsettling"
@onready var winning = $"../Node/Winning"
@onready var cheering = $"../Node/Cheering"
# @onready var quiet_yay = $"../Node/quietYay"
@onready var objectives = $"../Player/inventory and objectives/objectives"
@onready var torch = $"../Torch"


func closing():
	door_close.play()
	unsettling.playing = true
	winning.playing = false
	cheering.playing = false
#	quiet_yay.playing = false
	torch.change_lighting(Color(0.5, 0, 0), 0.3)
	objectives.brekfast()
	animator.play("closing")
	doorOpen = false
	print("closing")
	
func opening():
	door_open.play()
	unsettling.playing = false
	winning.playing = true
	cheering.playing = true
#	quiet_yay.playing = true
	torch.change_lighting()
	objectives.brekfast()
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
		
		


