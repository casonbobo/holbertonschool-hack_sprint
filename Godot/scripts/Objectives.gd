extends Control

@onready var eggX = $TextureRect2/VBoxContainer/Egg/Label
@onready var baconX = $TextureRect2/VBoxContainer/Bacon/Label
@onready var syrupX = $TextureRect2/VBoxContainer/Syrup/Label
@onready var butterX = $TextureRect2/VBoxContainer/Butter/Label
@onready var pancakeMixX = $TextureRect2/VBoxContainer/PancakeMix/Label
@onready var milkX = $TextureRect2/VBoxContainer/Milk/Label
@onready var door = $TextureRect2/VBoxContainer/Door
@onready var doorX = $TextureRect2/VBoxContainer/Door/Label
@onready var player = $"../.."


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func cross_off_item():
	if player.hasEgg == true:
		eggX.visibility = true
	if player.hasBacon == true:
		baconX.visibility = true
	if player.hasSyrup == true:
		syrupX.visibility = true
	if player.hasButter == true:
		butterX.visibility = true
	if player.hasPancakeMix == true:
		pancakeMixX.visibility = true
	if player.hasMilk == true:
		milkX.visibility = true
	if player.itemCount == 6:
		door.visibility = true
