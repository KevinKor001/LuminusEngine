extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	
	FetchNews()
	pass # Replace with function body.

func FetchNews():
	$"..".value = 0
	await get_tree().create_timer(.2).timeout
	$"..".value = 20
	await get_tree().create_timer(.2).timeout
	$"..".value = 50
	await get_tree().create_timer(.2).timeout
	$"..".value = 90
	await get_tree().create_timer(.2).timeout
	$"..".value = 1000
	await get_tree().create_timer(.2).timeout

	var newstab = load("res://Windows/Main Windows/ReleaseNewsTab.tscn").instantiate()
	newstab.ReleaseName = "HIIII!"
	newstab.ReleaseVers = "PRE ALPHA"
	newstab.ReleaseDesc = "SomeDescription idk like im just typing to see whats gona happen..."
	
	$"../../ScrollContainer/VBoxContainer".add_child(newstab)


func _on_tab_container_tab_clicked(tab):
	if tab == 2:
		FetchNews()
	pass # Replace with function body.

func Hi():
	print("Yes")
