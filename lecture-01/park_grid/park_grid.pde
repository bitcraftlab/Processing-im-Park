// Pick the size of the canvas
 
size(300, 300);
 
// Let's load all the images from our sketchfolder
 
PImage image1 = loadImage("park_001.jpg");
PImage image2 = loadImage("park_002.jpg");
PImage image3 = loadImage("park_003.jpg");
 
PImage image4 = loadImage("park_004.jpg");
PImage image5 = loadImage("park_005.jpg");
PImage image6 = loadImage("park_006.jpg");
 
PImage image7 = loadImage("park_007.jpg");
PImage image8 = loadImage("park_008.jpg");
PImage image9 = loadImage("park_009.jpg");
 
// Display the images in a 3 by 3 grid
 
image(image1, 0, 0, 100, 100);
image(image2, 100, 0, 100, 100);
image(image3, 200, 0, 100, 100);
 
image(image4, 0, 100, 100, 100);
image(image5, 100, 100, 100, 100);
image(image6, 200, 100, 100, 100);
 
image(image7, 0, 200, 100, 100);
image(image8, 100, 200, 100, 100);
image(image9, 200, 200, 100, 100);
 
// Save a screen shot to the sketch folder
 
saveFrame("park_grid.jpg");
