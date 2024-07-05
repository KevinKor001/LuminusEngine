extends Control

@export var hasLoading = false
@export var HasRefresh = false
@export var HasPath = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/HBoxContainer/ProgressBar.visible = hasLoading
	$VBoxContainer/HBoxContainer/Button.visible = HasRefresh
	$VBoxContainer/HBoxContainer/LineEdit.visible = HasPath
	
	
	
	var tree = $VBoxContainer/ScrollContainer/Tree
	var root = tree.create_item()
	tree.hide_root = true
	var child1 = tree.create_item(root)
	var child2 = tree.create_item(root)
	var subchild1 = tree.create_item(child1)
	var subchild2 = tree.create_item(child2)
	var subchild3 = tree.create_item(child2)
	var subchild4 = tree.create_item(child2)
	var subchild5 = tree.create_item(child2)
	var subchild6 = tree.create_item(child2)
	var subchild7 = tree.create_item(child2)
	
	
	subchild1.set_text(0, "Subchild1")
	subchild2.set_text(0, "Amogus")
	subchild3.set_text(0, "Amogus")
	subchild4.set_text(0, "Amogus")
	subchild5.set_text(0, "Amogus")
	subchild6.set_text(0, "Amogus")
	subchild7.set_text(0, "Amogus")
	child2.set_text(0, "child 2")
	child1.set_text(0, "ROOT")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
