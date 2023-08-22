extends Node

const NUM_INVENTORY_SLOTS = 6

var inventory = {}

# func has(num):
#	if inventory.size() :
#		return true
#	else:
#		return false

func add_item(item_name):
	for i in range(NUM_INVENTORY_SLOTS):
		# if inventory.has(i) == false:
		if inventory.size() <= i:
			inventory[i] = item_name
			return

