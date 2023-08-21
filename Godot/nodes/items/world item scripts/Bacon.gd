<<<<<<< Updated upstream:Godot/nodes/inventory_objectives.gd
extends CanvasLayer



func _input(event):
	if event.is_action_pressed("Objectives"):
		$objectives/TextureRect2.visible = !$objectives/TextureRect2.visible
=======
extends StaticBody3D

var item_name

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func pick_up_item(body):
	BaconSlot.visibility = true
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
>>>>>>> Stashed changes:Godot/nodes/items/world item scripts/Bacon.gd
