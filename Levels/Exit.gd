extends Area2D

func _on_Exit_body_entered(body):
	if body.name == "Player":
		if name == "Exit":
			var _target = get_tree().change_scene("res://Levels/Level_2.tscn")
		if name == "Exit2":
			var _target = get_tree().change_scene("res://Levels/Level_3.tscn")
		if name == "Exit3":
			var _target = get_tree().change_scene("res://Levels/Game_Over.tscn")
