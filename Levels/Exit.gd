extends Area2D

onready var SM = get_parent()
onready var player = get_node("../..")

func _on_Exit2_body_entered(_body):
	get_tree().change_scene("res://Scenes/Scene1.tscn")

func _on_Exit3_body_entered(_body):
	get_tree().change_scene("res://Scenes/Scene2.tscn")

func _on_Exit4_body_entered(_body):
	get_tree().change_scene("res://Scenes/Scene3.tscn")

func _on_Exit5_body_entered(_body):
	get_tree().change_scene("res://Scenes/Scene4.tscn")
