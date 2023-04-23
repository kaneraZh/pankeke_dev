extends RigidBody2D


@export var speed:int = 100
var direction:int = 3

func _process(delta):
	print("Rotacion: %s \n Position x: %s\n Position y: %s"%[rotation, position.x, position.y])
	if direction == 0:
		rotation_degrees = 0
		position.y -= speed * delta
	if direction == 1:
		rotation_degrees = 90
		position.x += speed * delta
	if direction == 2:
		rotation_degrees = 180
		position.y += speed * delta
	if direction == 3:
		rotation_degrees = 270
		position.x -= speed * delta

