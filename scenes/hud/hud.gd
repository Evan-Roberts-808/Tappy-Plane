extends Control

@onready var label: Label = $MarginContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalManager.on_score_updated.connect(on_score_updated)
	
func on_score_updated(score :int) -> void:
	label.text = str(score)
