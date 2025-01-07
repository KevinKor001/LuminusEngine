extends Control
@export var DisplayMode = "Grid"
@export var Directory = ""
@export var IsRefreshing = false
@export var Folders = []
@export var Files = []
# Called when the node enters the scene tree for the first time.
func _ready():
	set_displayMode(DisplayMode)
	List_CurrentDirectories(Directory)
	print(Folders)
	print(Files)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func set_displayMode(DisplayMode):
	
	if(DisplayMode == "Grid"):
		$Panel/VBoxContainer/ScrollContainer/ItemList.visible = false
		$Panel/VBoxContainer/ScrollContainer/GridContainer.visible = true
	else:
		$Panel/VBoxContainer/ScrollContainer/ItemList.visible = true
		$Panel/VBoxContainer/ScrollContainer/GridContainer.visible = false
	pass # Replace with function body.


func _on_refresh_button_pressed():
	
	$"Panel/VBoxContainer/HBoxContainer/RefreshButton".disabled = true
	IsRefreshing = true
	# do refresh
	
	pass # Replace with function body.

func List_CurrentDirectories(Directory):
	var Dir = DirAccess
	Dir.open(Directory)
	Folders = Dir.get_directories_at(Directory)



func List_CurrentDirectoryFiles(Directory):
	var Dir = DirAccess
	Dir.open(Directory)
	print( Dir.get_files_at(Directory))
