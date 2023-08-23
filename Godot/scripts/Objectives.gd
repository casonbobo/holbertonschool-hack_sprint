extends Control

@onready var text_rect2 = $TextureRect2
@onready var v_box = $TextureRect2/VBoxContainer
@onready var eggX = $TextureRect2/VBoxContainer/Egg/Label
@onready var baconX = $TextureRect2/VBoxContainer/Bacon/Label
@onready var syrupX = $TextureRect2/VBoxContainer/Syrup/Label
@onready var butterX = $TextureRect2/VBoxContainer/Butter/Label
@onready var pancakeMixX = $TextureRect2/VBoxContainer/PancakeMix/Label
@onready var milkX = $TextureRect2/VBoxContainer/Milk/Label
@onready var door = $TextureRect2/VBoxContainer/Door
@onready var breakfast = $TextureRect2/EatBreakfast
@onready var eat = $TextureRect2/EatBreakfast2
@onready var player = $"../.."
@onready var inv_and_obj = $".."
@onready var x = $"../../sounds/x"
@onready var writing = $"../../sounds/writing"
var win = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func cross_off_item():
	if player.hasEgg == true:
		eggX.visible = true
		play_sound()
	if player.hasBacon == true:
		baconX.visible = true
		play_sound()
	if player.hasSyrup == true:
		syrupX.visible = true
		play_sound()
	if player.hasButter == true:
		butterX.visible = true
		play_sound()
	if player.hasPancakeMix == true:
		pancakeMixX.visible = true
		play_sound()
	if player.hasMilk == true:
		milkX.visible = true
		play_sound()
	if player.itemCount == 6:
		door.visible = true
		if text_rect2.visible == true:
			writing.play()
			inv_and_obj.items_noted = player.itemCount

func play_sound():
	if text_rect2.visible == true && x.playing == false:
		x.play()
		inv_and_obj.items_noted = player.itemCount

func brekfast():
	if win == 0:
		v_box.visible = false
		breakfast.visible = true
		if text_rect2.visible == true:
			writing.play
			inv_and_obj.items_noted = player.itemCount
		win = 1
	else:
		breakfast.visible = !breakfast.visible
		eat.visible = !eat.visible
