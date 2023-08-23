extends CanvasLayer

@onready var x = $"../sounds/x"
@onready var writing = $"../sounds/writing"
@onready var open = $"../sounds/open"
@onready var player = $".."
@onready var objectives = $objectives
var items_noted = 0

func _input(event):
	if event.is_action_pressed("Objectives"):
		$objectives/TextureRect2.visible = !$objectives/TextureRect2.visible
		open.play()
		if $objectives/TextureRect.visible == true:
			if player.itemCount > items_noted:
				x.play()
				items_noted = player.itemCount
				if items_noted == 6:
					writing.play()
				if objectives.win == 1:
					writing.play()
					items_noted = 7

