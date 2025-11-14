extends Node2D

const SPEED = 60

var dir = 1

@onready var ray_cast_2d____right: RayCast2D = $"RayCast2D -- right"
@onready var ray_cast_2d____left: RayCast2D = $"RayCast2D -- left"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_cast_2d____left.is_colliding():
		dir = 1
		animated_sprite_2d.flip_h = false
		
	if ray_cast_2d____right .is_colliding():
		dir = -1
		animated_sprite_2d.flip_h = true

	position.x += dir * SPEED * delta
