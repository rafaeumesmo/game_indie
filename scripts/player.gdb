extends CharacterBody2D

@export var speed: int = 100

func handleInput():
	var moveDirection = Input.get_vector("mv_left", "mv_right", "mv_up", "mv_down")
	velocity = moveDirection * speed

func _physics_process(delta):
	handleInput()
	move_and_slide()