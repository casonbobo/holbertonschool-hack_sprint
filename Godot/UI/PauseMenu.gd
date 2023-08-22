extends ColorRect

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var play_button: Button = find_child("Resume")
@onready var quit_button: Button = find_child("Quit")

func _ready() -> void:
	play_button.pressed.connect(unpause)
	quit_button.pressed.connect(get_tree().quit)
	
func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func pause():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().paused == false:
			pause()
			print("pause")
		else:
			unpause()
			print("unpause")
