//This macro import zvi files and merge channels and max project in imageJ

path = getDirectory("Choose a Directory");
filename = getFileList(path);
newDir = path + "Max Projections" + File.separator;
if (File.exists(newDir))
    exit("Destination directory already exists; remove it and then run this macro again");
    File.makeDirectory(newDir);
    for (i=0; i<filename.length; i++) {
        if(endsWith(filename[i], ".zvi")) {

            open(path+filename[i]);
            run("Merge Channels...", "c3=[" + filename[i]+"  Ch3] c1=[" + filename[i] + "  Ch1] create");
            saveAs("Tiff", newDir + 'stack' + getTitle);
            run("Z Project...", "projection=[Max Intensity]");
            saveAs("tiff", newDir + getTitle);
            close(); close();
        }
    }
write("Finished");
