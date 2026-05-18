extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -600.0
const GRAVITY = 1200.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED

	move_and_slide()
	
	
func _process(delta):
	if position.y > 800:
		position = Vector2(100, 300)
