path = getDirectory("Choose a Directory");
filename = getFileList(path);
newDir = path + "Stack Projections" + File.separator;
if (File.exists(newDir))
exit("Destination directory already exists; remove it and then run this macro again");
File.makeDirectory(newDir);
for (i=0; i<filename.length; i++) {
	if(endsWith(filename[i], ".tif")) {
		open(path+filename[i]);
	}
}
run("Images to Stack", "name=Stack title=[] use");
saveAs("tif", newDir + getTitle);
close();
write("Finished");

