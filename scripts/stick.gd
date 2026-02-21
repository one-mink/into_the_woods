extends RigidBody2D

var speed = 2000

func _ready() -> void:
	var direction = Vector2(600, -400)
	apply_central_impulse(direction)
	angular_velocity = 15.0
func _process(delta: float) -> void:
	pass

func _on_body_entered(body):
	queue_free()
