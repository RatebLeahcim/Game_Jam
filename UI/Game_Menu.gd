extends Control

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		if visible:
			hide()
		else:
			show()

func _on_Quit_pressed():
	get_tree().quit()

func _on_Retry_pressed():
	get_tree().reload_current_scene()
