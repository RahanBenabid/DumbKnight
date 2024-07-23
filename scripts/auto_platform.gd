extends Node2D

const SPEED = 40

var direction = 1

@onready var ray_cast_right = $CharacterBody2D/RayCastRight
@onready var ray_cast_left = $CharacterBody2D/RayCastLeft


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	
	position.x += delta * SPEED * direction
