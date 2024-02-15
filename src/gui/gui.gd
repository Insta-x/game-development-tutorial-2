extends CanvasLayer

class_name GameGUI


signal restart_pressed()
signal next_level_pressed()

@onready var lose_panel: PanelContainer = $LosePanel
@onready var win_panel: PanelContainer = $WinPanel


func show_lose_panel() -> void:
	lose_panel.show()


func hide_lose_panel() -> void:
	lose_panel.hide()


func show_win_panel() -> void:
	win_panel.show()


func hide_win_panel() -> void:
	win_panel.hide()


func _on_restart_button_pressed() -> void:
	restart_pressed.emit()


func _on_next_level_button_pressed() -> void:
	next_level_pressed.emit()
