extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Death")
	player.jump_power = Vector2.ZERO
	player.velocity = Vector2.ZERO
