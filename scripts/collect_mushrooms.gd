extends Area2D

class_name Mushroom
static var count = 0
@onready var particles = $CPUParticles2D


func _ready() -> void:
	particles.visible = false

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	particles.visible = true
	await get_tree().create_timer(0.5).timeout
	if body.is_in_group("player"):
		
		queue_free()
		Mushroom.count += 1
		
