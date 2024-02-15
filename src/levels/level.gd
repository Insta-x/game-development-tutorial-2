extends Node


const player_scn: PackedScene = preload("res://src/player/player_ship.tscn")

@export var next_level_scn: PackedScene
@export var spawn_player_position: Marker2D
@export var game_gui: GameGUI


func _ready() -> void:
	spawn_player()


func restart_level() -> void:
	game_gui.hide_lose_panel()
	spawn_player()


func next_level() -> void:
	if next_level_scn:
		get_tree().change_scene_to_packed(next_level_scn)


func spawn_player() -> void:
	var player: PlayerShip = player_scn.instantiate()
	
	player.dead.connect(_on_player_ship_dead)
	spawn_player_position.add_child(player)


func _on_player_ship_dead() -> void:
	game_gui.show_lose_panel()


func _on_objective_area_objective_reached() -> void:
	game_gui.show_win_panel()
