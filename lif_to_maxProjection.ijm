// this is a macro that do Max projection
path = getDirectory("Choose a Directory");
filename = getFileList(path);
newDir = path + "Max Projections" + File.separator;
if (File.exists(newDir)){
	exit("Destination directory already exists; remove it and then run this macro again");
}

File.makeDirectory(newDir);
for (i=0; i<filename.length; i++) {
	if(endsWith(filename[i], ".lif")) {
		open(path+filename[i]);
	}
}

	
list = getList("image.titles");
if (list.length==0){
     wait(500);
}

else {
	for (i=0; i<list.length; i++){
	
	saveAs("Tiff", newDir + 'stack' + getTitle);
	run("Z Project...", "projection=[Max Intensity]");
	saveAs("tiff", newDir + getTitle);
	close(); close();
	}
}

write("Finished");
