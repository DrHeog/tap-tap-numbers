extends Node

var lobby : Node2D = preload("res://scenes/Lobby/DungeonRoom#1.tscn").instance()
var dungeon : Node2D = preload("res://scenes/Room#2/DungeonRoom#2.tscn").instance()
var timer : float = 0
var first_go : bool = true

func _ready():
	self.add_child(lobby)
	
func _process(delta):
	timer += delta
	if timer > 10 and first_go:
		lobby.queue_free()
		self.add_child(dungeon)
		first_go = false
