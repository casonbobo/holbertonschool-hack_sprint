extends Area3D

var picked_up_items = {}

func _on_body_entered(body):
	picked_up_items[body] = body
	body.pick_up_item(self)
