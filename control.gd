extends Control

func _on_btn_back_button_down() -> void:
	get_tree().change_scene_to_file("res://Menu.tscn")
