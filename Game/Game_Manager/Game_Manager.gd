extends Node

@onready var levels: Dictionary[String, PackedScene] = {
	# Place levels here to be loaded.
	# ex. "Level1" = preload("res://Game/Levels/level_one.tscn")
	"TestLevel" = preload("res://Game/Levels/Test_Level/Test_Level.tscn")
}

# Instantiated variable to hold future levels 
# that need to be instantiated and added to tree.
var level: Node2D

# Immediately loads a level.
func _ready() -> void:
	load_level()

# When called, loads a level (specified or maybe with some algorithm)
# before adding it as a child to tree.
func load_level():
	level = levels["TestLevel"].instantiate()
	add_child(level)
