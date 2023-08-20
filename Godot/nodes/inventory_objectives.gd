extends CanvasLayer



func _input(event):
	if event.is_action_pressed("Objectives"):
		$objectives/TextureRect2.visible = !$objectives/TextureRect2.visible


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
