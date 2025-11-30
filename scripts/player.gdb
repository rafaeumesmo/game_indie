extends CharacterBody2D

@export var speed: int = 100
@onready var animations = $AnimationPlayer

func handleInput():
	var moveDirection = Input.get_vector("mv_left", "mv_right", "mv_up", "mv_down")
	velocity = moveDirection * speed

func updateAnimation():
	var direction =  "Down"
	if velocity.x < 0: direction = "Left"
	elif velocity.x > 0: direction = "Right"
	elif velocity.y < 0: direction = "Up"

	animations.play("walk" + direction)

func _physics_process(delta):
	handleInput()
	move_and_slide()
	updateAnimation()
