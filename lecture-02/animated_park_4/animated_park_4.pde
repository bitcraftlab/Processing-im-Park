
PImage[] images = new PImage[9];

void setup() {
  
  size(300, 300);
  background(0, 0, 0);
  frameRate(30);
  
  // load images into the array using a loop
  for(int i=0; i < 9; i++) {
    images[i] = loadImage("park_00" + (i + 1) + ".jpg");  
  }
  
}

void draw() {
  
  // picking index of an image
  int pick = frameCount % 9;
  
  // get image from the array and display it
  image(images[pick], 0, 0, 300, 300);
  
}

