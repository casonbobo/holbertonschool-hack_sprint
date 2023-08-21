extends CanvasLayer



func _input(event):
	if event.is_action_pressed("Objectives"):
		$objectives/TextureRect2.visible = !$objectives/TextureRect2.visible
