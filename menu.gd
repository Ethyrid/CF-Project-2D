extends Control

func _on_btn_start_button_down() -> void:
	get_tree().change_scene_to_file("res://Gameplay.tscn")


func _on_btn_exit_button_down() -> void:
	get_tree().quit()


func _on_btn_options_button_down() -> void:
	get_tree().change_scene_to_file("res://Options.tscn")
