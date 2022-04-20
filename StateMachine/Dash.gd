extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

onready var prev_direction = player.direction
var canDash = false
var dashing = false
var direction = Vector2.ZERO
func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Dash")

func physics_process(_delta):
	if player.is_on_floor():
		canDash = true

	if Input.is_action_just_pressed("dash") and canDash:
		player.velocity.y = 0
		player.velocity.x += prev_direction.normalized()*5000
		player.move_and_slide(player.velocity, Vector2.UP)
		canDash = false
		dashing = true
		yield(get_tree().create_timer(1),"timeout")
		dashing = false
	if not dashing:
		SM.set_state("Falling")

	
