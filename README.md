# Introduction

ImageJ is a commonly used software among biologist for image analysis. However, the batch mode in imageJ is not the most user-friendly 
way to automate image analysis. One of the best way for automating a series of commands in imageJ is **Macro**. Here is a list of 
imageJ macros that may save you a few hours:

1. images_to_stack.ijm:
  A script automatically take images from one folder and make a stack;
2. max_projection.ijm:
  A script automatically take all stacked images from one folder and apply max projection, saving all max projection pictures into a
  new folder;
3. mt_length_measurement.ijm:
  A script automatically measure the length of MTs;
4. red_to_blue_channel.ijm:
  A script change images from 1 channel to another, in this case, from red to blue;
5. batch_images_to_stack.ijm:
  A script automatically going through all images within a folder and its subfolders and make stacks;
  
A general introduction of Macro Language: [ImageJ Macro Language](https://rsb.info.nih.gov/ij/developer/macro/macros.html)
