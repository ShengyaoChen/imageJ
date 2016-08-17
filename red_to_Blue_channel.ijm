//this is a macro that change the red channel to blue channel
path = getDirectory("Choose a Directory");
filename = getFileList(path);
newDir = path + "RtoBchannel" + File.separator;
if (File.exists(newDir))
exit("Destination directory already exists; remove it and then run this macro again");
File.makeDirectory(newDir);
for (i=0; i<filename.length; i++) {
if(startsWith(filename[i], "050316_FLIM")) {

open(path+filename[i]);
run("Channels Tool...");
run("Blue");
saveAs("tiff", newDir + getTitle);
close();
}
}
write("Finished");
