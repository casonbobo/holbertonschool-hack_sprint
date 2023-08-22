extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var hasBacon = false
@onready var bacon = $"../hotbar/HBoxContainer/slot4/RawBacon"
var hasButter = false
@onready var butter = $"../hotbar/HBoxContainer/slot5/SlicedButter"
var hasMilk = false
@onready var milk = $"../hotbar/HBoxContainer/slot3/MilkCarton"
var hasPancakeMix = false
@onready var pancakeMix = $"../hotbar/HBoxContainer/slot1/pancakeMix"
var hasSyrup = false
@onready var syrup = $"../hotbar/HBoxContainer/slot2/MapleSyrup"
var hasEgg = false
@onready var egg = $"../hotbar/HBoxContainer/slot6/TestEgg"
@export var itemCount = 0
@onready var camerabase = $CameraBase
@onready var jump = $"../Node/jump"
@onready var walking = $"../Node/walking"
@onready var objectives = $"inventory and objectives/objectives"


func _ready():
	Input.mouse_mode = 2

func _input(event):
	if event is InputEventMouseMotion:
		camerabase.rotation.x -= deg_to_rad(event.relative.y * 1)
		camerabase.rotation.x -= clamp(camerabase.rotation.x, deg_to_rad(-90), deg_to_rad(90))
		rotation.y -= deg_to_rad(event.relative.x * 1)

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	# Handle Jump.
	if Input.is_action_pressed("Jump") and is_on_floor():
		jump.play()
		velocity.y = JUMP_VELOCITY
	var input_dir = Input.get_vector("Left", "Right", "Forward", "Backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		walking.play()
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
func get_bacon():
	bacon.visible = true
	hasBacon = true
	itemCount += 1
	objectives.cross_off_item()
func get_milk():
	milk.visible = true
	hasMilk = true
	itemCount += 1
	objectives.cross_off_item()
func get_egg():
	egg.visible = true
	hasEgg = true
	itemCount += 1
	objectives.cross_off_item()
func get_pancakeMix():
	pancakeMix.visible = true
	hasPancakeMix = true
	itemCount += 1
	objectives.cross_off_item()
func get_butter():
	butter.visible = true
	hasButter = true
	itemCount += 1
	objectives.cross_off_item()
func get_syrup():
	syrup.visible = true
	hasSyrup = true
	itemCount += 1
	objectives.cross_off_item()
