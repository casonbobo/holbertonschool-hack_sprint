extends Node2D

var item_name = "bacon"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_item(name):
	item_name = name
	$name.visibility = true

