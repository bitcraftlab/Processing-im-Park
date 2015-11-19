
// declaring an array
PImage[] images;

// creating the array
images = new PImage[10];

// declaring a temporary image variable
PImage tmp;

// filling the first slot
tmp = loadImage("park_001.jpg");
images[0] = tmp;

// filling the second slot
tmp = loadImage("park_002.jpg");
images[1] = tmp;

// filling the third
tmp = loadImage("park_003.jpg");
images[2] = tmp;

// create two variables refering to the SAME image
PImage newImage = images[0];
PImage newImage2 = images[0];

newImage.resize(10, 10);
newImage2.resize(width, height);
image(newImage2, 0, 0);

PImage newImage3 = images[2].get(0, 0, width, 10);

image(newImage3, 0, 0);