extends RigidBody2D

var speed = 2000


func _ready() -> void:
	var start_vector = Vector2.ZERO
	
	if Player.p_direction > 0:
		start_vector = Vector2(600, -400)
			
	elif Player.p_direction < 0:
		start_vector = Vector2(-600, -400)

	apply_central_impulse(start_vector)
	angular_velocity = 15.0

func _process(delta: float) -> void:
	pass
	
