extends Control

# When 'play' button is pressed, changes current file to
# the game manager scene.
func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game/Game_Manager/Game_Manager.tscn")
