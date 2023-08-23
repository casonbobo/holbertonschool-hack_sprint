extends StaticBody3D

@onready var light = $OmniLight3D
@onready var t2 = $"Torch2/OmniLight3D"
@onready var t3 = $"Torch3/OmniLight3D"
@onready var t = $"Torch/OmniLight3D"
@onready var t4 = $"Torch4/OmniLight3D"
@onready var t5 = $"Torch5/OmniLight3D"
@onready var t6 = $"Torch6/OmniLight3D"
@onready var t7 = $"Torch7/OmniLight3D"
@onready var t8 = $"Torch8/OmniLight3D"
@onready var t9 = $"Torch9/OmniLight3D"
@onready var t10 = $"Torch10/OmniLight3D"
@onready var t11 = $"Torch11/OmniLight3D"
@onready var t12 = $"Torch12/OmniLight3D"
@onready var t13 = $"Torch13/OmniLight3D"
@onready var t14 = $"Torch14/OmniLight3D"
@onready var t15 = $"Torch15/OmniLight3D"
@onready var t16 = $"Torch16/OmniLight3D"
@onready var t17 = $"Torch17/OmniLight3D"
@onready var t18 = $"Torch18/OmniLight3D"
@onready var t19 = $"Torch19/OmniLight3D"
@onready var t20 = $"Torch20/OmniLight3D"
@onready var t21 = $"Torch21/OmniLight3D"
@onready var t22 = $"Torch22/OmniLight3D"
@onready var t23 = $"Torch23/OmniLight3D"
@onready var t24 = $"Torch24/OmniLight3D"
@onready var t25 = $"Torch25/OmniLight3D"
@onready var t26 = $"Torch26/OmniLight3D"
@onready var t27 = $"Torch27/OmniLight3D"

# Called when the node enters the scene tree for the first time.
func _ready():
	change_lighting()
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func change_lighting(clr = Color(1, 0.65, 0.32), energy = 3.0):
	light.light_color = clr
	light.light_energy = energy
	t2.light_color = clr
	t2.light_energy = energy
	t3.light_color = clr
	t3.light_energy = energy
	t.light_color = clr
	t.light_energy = energy
	t4.light_color = clr
	t4.light_energy = energy
	t5.light_color = clr
	t5.light_energy = energy
	t6.light_color = clr
	t6.light_energy = energy
	t7.light_color = clr
	t7.light_energy = energy
	t8.light_color = clr
	t8.light_energy = energy
	t9.light_color = clr
	t9.light_energy = energy
	t10.light_color = clr
	t10.light_energy = energy
	t11.light_color = clr
	t11.light_energy = energy
	t12.light_color = clr
	t12.light_energy = energy
	t13.light_color = clr
	t13.light_energy = energy
	t14.light_color = clr
	t14.light_energy = energy
	t15.light_color = clr
	t15.light_energy = energy
	t16.light_color = clr
	t16.light_energy = energy
	t17.light_color = clr
	t17.light_energy = energy
	t18.light_color = clr
	t18.light_energy = energy
	t19.light_color = clr
	t19.light_energy = energy
	t20.light_color = clr
	t20.light_energy = energy
	t21.light_color = clr
	t21.light_energy = energy
	t22.light_color = clr
	t22.light_energy = energy
	t23.light_color = clr
	t23.light_energy = energy
	t24.light_color = clr
	t24.light_energy = energy
	t25.light_color = clr
	t25.light_energy = energy
	t26.light_color = clr
	t26.light_energy = energy
	t27.light_color = clr
	t27.light_energy = energy
