extends Panel

var ItemClass = preload("res://nodes/items/item.tscn")
var item = null

# Called when the node enters the scene tree for the first time.
func _ready():
	# this is temporary code just to see what I have so far
	# if randi() % 2 == 0:
		# item = ItemClass.instantiate()
		# add_child(item)
	pass


func initialize_item(item_name):
	if item == null:
		item = ItemClass.instantiate()
		add_child(item)
		item.set_item(item_name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
