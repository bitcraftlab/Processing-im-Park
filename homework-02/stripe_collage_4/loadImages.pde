
File[] files;

// open a dialog to select a folder.
void loadImages() {
  
  // The second argument is the name of a callback function, that will be called when the user has made her choice.
  String msg = "Select a folder with input images.";
  selectFolder(msg, "loadFolder");
  
}
  
// our custom defined callback function
void loadFolder(File folder) {
  
   if (folder == null) {
    
    // if no folder was selected, let's give up.
    println("Aborted.");
    exit();
    
  } else {
    
    // Load all image files from the selected folder ...
    println("Selected: " + folder.getAbsolutePath());
    files = folder.listFiles();
    
    // Create an image array 
    int n = files.length;
    images = new PImage[n];
    
    // load all the images
    for(int i = 0; i < n; i++) {
      String path = files[i].toString();
      PImage img = loadImage(path);
      img.resize(width, height);
      images[i] = img;
    }
    
    redraw();
    
  } 
  
}

