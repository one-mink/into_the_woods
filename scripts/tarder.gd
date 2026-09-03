extends Area2D

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if Mushroom.count > 0:
		Fuel.fuel += 10*Mushroom.count
		Mushroom.count -= Mushroom.count	
		print(Fuel.fuel)
		
	
