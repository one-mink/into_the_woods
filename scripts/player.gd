extends CharacterBody2D

class_name Player
static var p_direction = 0
var wood_stick = preload("res://scenes/Wood_Stick.tscn")
@export var POWER = 400.0
@export var SPEED: float = 350.0
static var hearts = 50

const JUMP_VELOCITY = -700.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if Input.is_action_just_pressed("throw"):
		throw()
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY + (Stick.count*10)
		
	var direction := Input.get_axis("left", "right")
	
	p_direction = direction
	
	if direction:
		velocity.x = direction * SPEED
		if direction > 0:
			$AnimatedSprite2D.flip_h = false		
		if direction < 0:
			$AnimatedSprite2D.flip_h = true
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if hearts <= 0:
		get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	move_and_slide()
	
func throw():
	
	if Stick.count > 0:
		var stick = wood_stick.instantiate()
		if Player.p_direction >= 0:
			stick.global_position = $Stick_Start.global_position
		if Player.p_direction < 0:
			stick.global_position = $Stick_Start_Flip.global_position
		get_tree().root.add_child(stick)
		
		
		Stick.count -= 1
		print("Sticks: ", Stick.count)

		
