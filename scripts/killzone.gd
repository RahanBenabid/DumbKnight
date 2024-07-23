extends Area2D

@onready var timer = $Timer # This is a path
@onready var death = $Death


func _on_body_entered(body):
	print("Game Over")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() # we access our player and remove his collision
	timer.start()
	death.play()
	

# Runs when the timer ends
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
