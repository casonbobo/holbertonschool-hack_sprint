extends StaticBody3D

var item_name

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func pick_up_item(body):
	PancakeMixSlot.visibility = true
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
