extends Area2D

@onready var particles = $CPUParticles2D
func _ready() -> void:
	particles.visible = false 

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	particles.visible = true
	await get_tree().create_timer(1).timeout
	if Mushroom.count > 0:
		Fuel.fuel += 10*Mushroom.count
		Mushroom.count -= Mushroom.count	
		print(Fuel.fuel)
	particles.visible = false
	
