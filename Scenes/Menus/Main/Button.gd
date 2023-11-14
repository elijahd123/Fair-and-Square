extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("../Label").text = str(Shapes.taps)


func _on_button_down():
	Shapes.taps += 1
	$"../Label".text = str(Shapes.taps)
