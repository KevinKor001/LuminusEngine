extends Tree

var path = "res://Windows/MainEditor/CodeEditor/Nodes"


func get_file_listing(path: String) -> Array:
	var dir = DirAccess.open(path)  # Open the directory at the specified path
	var file_list = []

	if dir:
		dir.list_dir_begin()  # Initialize the directory listing process
		
		var file_name = dir.get_next()  # Get the first file/folder in the directory
		while file_name != "":
			# Skip "." and ".." (current and parent directory entries)
			if file_name != "." and file_name != "..":
				# Only add files (not directories) to the list
				if not dir.current_is_dir():
					file_list.append(file_name)
			file_name = dir.get_next()  # Get the next file/folder
		
		dir.list_dir_end()  # Clean up when finished
	return file_list
func get_folder_listing(path: String) -> Array:
	var dir = DirAccess.open(path)
	var file_list = []
	
	if dir:
		dir.list_dir_begin()  # Start listing the directory contents.
		
		var file_name = dir.get_next()  # Get the first file/folder.
		while file_name != "":
			# Skip "." and ".." (current and parent directory entries).
			if file_name != "." and file_name != "..":
				file_list.append(file_name)
			file_name = dir.get_next()  # Get the next file/folder.
		
		dir.list_dir_end()  # Must be called to free resources used by DirAccess.
	
	return file_list








# Called when the node enters the scene tree for the first time.
func _ready():
	var TreeList = $"."
	$".".clear()
	
	var nodeList = $"."
	var root_item = nodeList.create_item()
	root_item.set_text(0, "Im a bug!")
	
#	var files = get_folder_listing(path)
#	for category in files:
#		var childItem = nodeList.create_item(root_item)
#		childItem.set_text(0, category)
	add_directory_to_tree(path, root_item)
	
#	print(files)
	print(get_file_listing(str(path)))
	pass # Replace with function body.
	
	
func add_directory_to_tree(path: String, parent_item: TreeItem):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var filename = dir.get_next()
		
		while filename != "":
			if filename !="." and filename !="..":
				var new_item = $".".create_item(parent_item)
				new_item.set_text(0, filename)
				
				var full_path = path + "/" + filename
				
				if dir.current_is_dir():  # If it's a directory, recurse into it
					add_directory_to_tree(full_path, new_item)
			filename = dir.get_next()  # Get the next file/folder
		
		dir.list_dir_end()  # End the listing


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
