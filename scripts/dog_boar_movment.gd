extends CharacterBody2D

class_name Dog
static var sitting = false

var SPEED = 300.0
const JUMP_VELOCITY = -400.0
var direction: int = 1

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	velocity.x = direction * SPEED
	
	move_and_slide()
	
	if is_on_wall():
		flip_direction()
		
	if sitting:
		SPEED = 0
		await get_tree().create_timer(2.0).timeout
		SPEED = 300
	

func flip_direction():
	direction *= -1
	$AnimatedSprite2D.flip_h = (direction == -1)
