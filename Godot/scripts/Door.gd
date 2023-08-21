extends Node3D

var doorOpen = false;
@onready var animator: AnimationPlayer = $AnimationPlayer

func closing():
	animator.play("closing")
	doorOpen = false
	print("closing")
	
func opening():
	animator.play("opening")
	doorOpen = true
	print("opening")

func _unhandled_input(event):
	if doorOpen == false:
		if Input.is_action_just_pressed("Interact"):
			opening()
			doorOpen = true
			print("interacting")
	else:
		if Input.is_action_just_pressed("Interact"):
			closing()
			doorOpen = false
			print("interacting")
		
		


