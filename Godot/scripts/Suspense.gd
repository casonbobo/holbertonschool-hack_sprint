extends AudioStreamPlayer

@onready var player = $"../../Player"
var has_played = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _unhandled_input(event):
	if player.itemCount == 6 && has_played == 0:
		has_played = 1
		self.play()
