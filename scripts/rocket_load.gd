extends Area2D

class_name Fuel
static var fuel = 0
var speed: float = 400.00
static var fuel_tank = 0
var started = false
@onready var rocket_particles = [$rocket_particles, $CPUParticles2D, $CPUParticles2D2]


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	for i in rocket_particles:
		i.visible = false
	
	if started == true:
		for a in rocket_particles:
			a.visible = true 
		position += Vector2.UP * speed * delta
	
	
func _on_body_entered(body: Node2D) -> void:
	Fuel.fuel_tank += Fuel.fuel
	Fuel.fuel = 0
	print(fuel_tank)
	
	if fuel_tank >= 50:
		$RocketCam.make_current()
		started = true
	
