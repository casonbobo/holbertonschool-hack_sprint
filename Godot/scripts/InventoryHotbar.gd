extends Node


var slots = []
@onready var slot_1 = $HBoxContainer/slot1
@onready var slot_2 = $HBoxContainer/slot2
@onready var slot_3 = $HBoxContainer/slot3
@onready var slot_4 = $HBoxContainer/slot4
@onready var slot_5 = $HBoxContainer/slot5
@onready var slot_6 = $HBoxContainer/slot6


# Called when the node enters the scene tree for the first time.
func _ready():
	slots.append(slot_1)
	slots.append(slot_2)
	slots.append(slot_3)
	slots.append(slot_4)
	slots.append(slot_5)
	slots.append(slot_6)
	init_inventory()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func init_inventory():
	# var slots = inventory_slots.get_children()
	for i in range(slots.size()):
		print(i)
		# if InventoryStorage.has(i):
		if InventoryStorage.inventory.size() > i:
			slots[i].init_item(InventoryStorage.inventory[i])
