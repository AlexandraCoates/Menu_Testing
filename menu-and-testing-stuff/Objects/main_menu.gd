extends Control
@onready var start_button: Button = $"VBoxContainer/Start Button"
@onready var options_button: Button = $"VBoxContainer/Options Button"
@onready var bestiary_button: Button = $"VBoxContainer/Bestiary Button"
@onready var quit_button: Button = $"VBoxContainer/Quit Button"
@onready var load_button: Button = $"VBoxContainer/Load Button"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# This would change the scene to the first one here, does mean that saving and loading would not be possible though.
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("BLA")


func _on_options_button_pressed() -> void:
	var options = load("res://main_menu.gd").instance() # change the "" to the options scene here
	get_tree().current_scene.add_child(options) # this adds the options to the current scene 

func _on_bestiary_button_pressed() -> void:
	get_tree().change_scene_to_file("BLA2") # change to where it needs to go 


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_load_button_pressed() -> void: # need to figure out saving / loading ;-; 
	pass # Replace with function body.
