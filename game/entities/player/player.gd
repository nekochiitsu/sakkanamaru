extends Node


var InputHandler: Thread = Thread.new()
var handling_inputs: bool = false

var Champion = CharacterBody3D

func _ready():
	InputHandler.start(input_handler)
	Champion = $Champion
	handling_inputs = true


func spawn(champion_name: String):
	pass


func input_handler():
	while true:
		print("e")
		if handling_inputs:
			var inputs: Array[bool] = []
			inputs.append(Input.is_action_pressed("move"))
			inputs.append(Input.is_action_just_pressed("attack"))
			inputs.append(Input.is_action_pressed("spell_1"))
			inputs.append(Input.is_action_just_pressed("spell_1"))
			inputs.append(Input.is_action_pressed("spell_2"))
			inputs.append(Input.is_action_just_pressed("spell_2"))
			inputs.append(Input.is_action_pressed("spell_3"))
			inputs.append(Input.is_action_just_pressed("spell_3"))
			inputs.append(Input.is_action_pressed("spell_4"))
			inputs.append(Input.is_action_just_pressed("spell_4"))
			inputs.append(Input.is_action_just_pressed("item"))
			$Champion.call_deferred("call_input_inputs", inputs)
			$Champion.call_deferred("set_mouse_position", $Champion.get_local_mouse_position())
			# Champion.rpc("input_inputs", inputs)
			# Champion.rpc("set_mouse_position", get_viewport().get_mouse_position())


#$Champion.call_deferred("call_input_inputs", inputs)
#$Champion.call_deferred("set_mouse_position", $Champion.get_local_mouse_position())
