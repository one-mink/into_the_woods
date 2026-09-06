extends CharacterBody2D

class_name Dog
var is_alive = true

var SPEED = 200.0
const JUMP_VELOCITY = -400.0
var direction: int = 1


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	velocity.x = direction * SPEED
	
	move_and_slide()
	
	if is_on_wall():
		flip_direction()
		
	if is_alive == false:
		await get_tree().create_timer(0.5).timeout
		queue_free()	

func flip_direction():
	direction *= -1
	$AnimatedSprite2D.flip_h = (direction == -1)
	

	
