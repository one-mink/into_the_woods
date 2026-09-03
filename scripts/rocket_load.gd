extends Area2D

class_name Fuel
static var fuel = 0
var speed: float = 400.00
var fuel_tank = 0
var started = false

@onready var fuel_bar = $/root/World/CanvasLayer/UI/ProgressBar

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	fuel_bar = fuel_tank
	if started == true:
		position += Vector2.UP * speed * delta
	
	
func _on_body_entered(body: Node2D) -> void:
	fuel_tank += Fuel.fuel
	Fuel.fuel = 0
	print(fuel_tank)
	
	if fuel_tank >= 50:
		$RocketCam.make_current()
		started = true
	
