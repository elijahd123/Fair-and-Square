extends Node

var PATH = "res://data,"

func loadGame():
	var config = ConfigFile.new()
	var err = config.load("user://settings.cfg")
	if err != OK:
		return
	Shapes.taps = config.get_value("shapes", "taps")

func saveGame():
	var config = ConfigFile.new()
	config.set_value("shapes", "taps", Shapes.taps)
	config.save("user://settings.cfg")


func _physics_process(_delta):
	if Engine.get_physics_frames() % 30 == 0:
		Savegame.saveGame()
