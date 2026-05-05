extends CharacterBody2D
var A = 0
var B = 0
var SpeedupR = 1
signal CollisionR(value)
func _on_ball_level(value: Variant) -> void:
	A = value

func _on_ball_sides(value: Variant) -> void:
	B = value

func _physics_process(_delta: float) -> void:
	position.x = 559
	velocity.y = 0
	if B > 0:
		if A < position.y:
			velocity.y = -128
		if A > position.y:
			velocity.y = 128
	move_and_slide()
