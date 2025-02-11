extends Node

const SCORES_PATH = "user://tappy.dat"

var _score : int = 0
var _high_score: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func get_score() -> int:
	return _score
	
func get_high_score() -> int:
	return _high_score

func set_score(v: int) -> void:
	_score = v
	if _score > _high_score:
		_high_score = _score
	SignalManager.on_score_updated.emit(_score)
	
func increment_score() -> void:
	set_score(_score + 1)
