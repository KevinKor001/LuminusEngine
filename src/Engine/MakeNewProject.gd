class_name MakeNewProject


static  func Create_Directory(SelectedDirectory: String,ProjectName: String,Log: bool,Templates: String, Extras: String):
	var dir = DirAccess
	var data = {}
	var Template = Templates
	var Extra = Extras
	
	
	
	data = {
	"ProjectDirectory": SelectedDirectory,
	"Content": SelectedDirectory + "/Content",
	"Default":SelectedDirectory + "/Content/Default",
	"Scripts": SelectedDirectory + "/Scripts",
	"bin": SelectedDirectory + "/bin",
	"Extensions": SelectedDirectory + "/Extensions"
	
}

	if Log == true:
		print("New Project Dir:" + SelectedDirectory + " New Project Name: " + ProjectName) 
		print(data)
		print("Begin Directory steup...")
		
		
	dir.open(SelectedDirectory)
	for Folder in data:
		print(data[Folder])
		dir.make_dir_recursive_absolute(data[Folder])
		
		
	
	#set directory instead of dir/ to dir/project.lp

	print(str(data) + "before")
	
	data = {
	"ProjectDirectory": SelectedDirectory,
	"Content": SelectedDirectory + "/Content",
	"Scripts": SelectedDirectory + "/Scripts",
	"bin": SelectedDirectory + "/bin",
	"Extensions": SelectedDirectory + "/Extensions",
	"Root": SelectedDirectory
	}
	SelectedDirectory = SelectedDirectory + "/Project.lp"
	
	print(data)
	var file := FileAccess.open(SelectedDirectory, FileAccess.WRITE)
	if file:
		# Convert the dictionary to a JSON string
		var json_string := JSON.stringify(data, "\t") # Optional tabbing for readability
		file.store_string(json_string)
		file.close()
		print("JSON data saved successfully to ", SelectedDirectory)
	else:
		print("AAA01 Failed to open file for writing: ", SelectedDirectory)
		
	
#EOF
