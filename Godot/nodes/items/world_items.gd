extends StaticBody3D

var item_name

# Called when the node enters the scene tree for the first time.
func _ready():
	item_name = "bacon"


func pick_up_item():
	Slot.initialize_item(item_name)
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

