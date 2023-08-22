extends StaticBody3D

@export var itemName: String
@onready var player = $"../Player"
@onready var pickup_item = $"../Node/pickupItem"


func pick_up_item(body):
	pickup_item.play()
	print(itemName)
	addItem()
	print(player.itemCount)
	queue_free()

	
	
func addItem():
	if itemName == "Bacon":
		player.get_bacon()
	elif itemName == "Butter":
		player.get_butter()
	elif itemName == "Egg":
		player.get_egg()
	elif itemName == "Milk":
		player.get_milk()
	elif itemName == "Syrup":
		player.get_syrup()
	elif itemName == "pancakeMix":
		player.get_pancakeMix()
	else:
		pass
