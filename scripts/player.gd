extends CharachterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	@export var speed:int = 20
	var velocity:Vector2 = Vector2.ZERO
	var friction:float = 0.8

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
