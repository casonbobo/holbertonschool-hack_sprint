extends Area3D

<<<<<<< Updated upstream:Godot/nodes/PickupArea.gd
var picked_up_items = {}
=======

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

>>>>>>> Stashed changes:Godot/scripts/PickupArea.gd

func _on_body_entered(body):
	body.pick_up_item(self)
