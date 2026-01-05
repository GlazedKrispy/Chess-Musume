extends Node

var dummyChar = preload("res://Game/Levels/Test_Level/DummyCharacter.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	instantiate_dummy()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

# Instantiates dummy
func instantiate_dummy():
	var dummy = dummyChar.instantiate()
	get_tree().current_scene.add_child.call_deferred(dummy)
