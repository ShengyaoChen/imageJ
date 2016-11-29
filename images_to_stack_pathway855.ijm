path = getDirectory("Choose a Directory");
list = getFileList(path);
for (i = 0; i < list.length; i++){
	if(endsWith(list[i], "/")){
		print(list[i]);
		fileList = getFileList(path + list[i]);
		newDir = path + "Stack Projections" + File.separator;
		File.makeDirectory(newDir);
		for (j = 0; j < fileList.length; j++){
			if(endsWith(fileList[j], ".tif") && startsWith(fileList[j], "GFP")) {
				open(path+list[i] + fileList[j]);
			}
		}
		name = substring(list[i], 0, lengthOf(list[i])-1);
		run("Images to Stack", "name title=[] use");
		saveAs("tif", newDir + getTitle);
		close();

		for (j = 0; j < fileList.length; j++){
			if(endsWith(fileList[j], ".tif") && startsWith(fileList[j], "Texas")) {
				open(path+list[i] + fileList[j]);
			}
		}
		name = substring(list[i], 0, lengthOf(list[i])-1);
		run("Images to Stack", "name title=[] use");
		saveAs("tif", newDir + getTitle);
		close();


		
	}
}
