// this is a macro that do Max projection
path = getDirectory("Choose a Directory");
filename = getFileList(path);
newDir = path + "measurement" + File.separator;

File.makeDirectory(newDir);
for (i=0; i<filename.length; i++) {
	if(endsWith(filename[i], "T.tif")) {
		name = filename[i] + 'measurement';
		open(path+filename[i]);
		run("Enhance Contrast...", "saturated=0.4");
		setOption("BlackBackground", true);
		run("Make Binary");
		run("Skeletonize");
		run("Set Measurements...", "  perimeter redirect=None decimal=3");
		run("Analyze Particles...", "size=5-1000 circularity=0.00-0.90 show=Outlines display exclude clear summarize");
		saveAs('Results', newDir + name + ".csv");
		close(); close();
	}
}
write("Finished");