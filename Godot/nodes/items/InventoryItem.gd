extends Node2D

@onready var item_images = $Control
var item_name = "bacon"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_item(name):
	item_name = name
	var items = item_images.get_children()
	for i in items:
		if item_name == i.name:
			i.visibility = true
			return

