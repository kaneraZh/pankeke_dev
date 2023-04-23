extends CharacterBody2D

@export var speed:int = 200
var direction:int = 1
var can_shoot:bool = true
var shoot_timer = 10
signal shoot
var scene_bullet = preload('res://scenes/bullet.tscn')
@export var shoot_interval_fps = 10

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	if input_direction:direction = get_direction(input_direction)
	
	if Input.is_action_pressed("shoot") and can_shoot:
		can_shoot = false
		shoot_timer = 0
		var bullet = scene_bullet.instantiate()
		bullet.direction = direction
		bullet.position = position
		get_parent().add_child(bullet)
	
	if shoot_timer != shoot_interval_fps:
		shoot_timer += 1
	else:
		can_shoot = true
func _physics_process(delta):
	get_input()
	move_and_slide()

func get_direction(direction):
	match direction:
		Vector2.UP:
			return 0
		Vector2.RIGHT:
			return 1
		Vector2.DOWN:
			return 2
		Vector2.LEFT:
			return 3
		_:
			return 1
	
