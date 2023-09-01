extends CharacterBody2D

var speed: float = 300.0
var target: Vector2 = Vector2()
var inputs: Array[bool] = [
	false, false, false, false, false,
	false, false, false, false, false, 
	false
]
var mouse_position: Vector2 = Vector2()


func _physics_process(_delta):
	velocity = min(abs(target.length()), 1) * target.normalized()
	move_and_slide()


func input_inputs(_inputs: Array[bool]
			# 0  "move", "attack", "spell_1", "spell_1", "spell_2"
			# 5  "spell_2", "spell_3", "spell_3", "spell_4", "spell_4"
			# 10 "item_1"
		):
	if "move":
		target = mouse_position


func set_mouse_position(_mouse_position):
	mouse_position = _mouse_position


func online_correction(values):
	pass


func online_synchronisation(values):
	pass
