
// Creating an array to hold all the images
PImage[] images = new PImage[9];

void setup() {
 
  // load images into the array, one by one.
  images[0] = loadImage("park_009.jpg");  
  images[1] = loadImage("park_001.jpg");
  images[2] = loadImage("park_002.jpg");
  
  images[3] = loadImage("park_003.jpg");
  images[4] = loadImage("park_004.jpg");
  images[5] = loadImage("park_005.jpg");
  
  images[6] = loadImage("park_006.jpg");
  images[7] = loadImage("park_007.jpg");
  images[8] = loadImage("park_008.jpg");

  size(300, 300);
  background(0, 0, 0);
  frameRate(30);
}

void draw() {

  int pick = frameCount % 9;
  
  switch(pick) {
    case 1: 
      image(images[1], 0, 0, 300, 300);
      break;
    case 2:
      image(images[2], 0, 0, 300, 300);
      break;
    case 3:
      image(images[3], 0, 0, 300, 300);
      break;  
    case 4:
      image(images[4], 0, 0, 300, 300);
      break;
    case 5:
      image(images[5], 0, 0, 300, 300);
      break;
    case 6:
      image(images[6], 0, 0, 300, 300);
      break;
    case 7:
      image(images[7], 0, 0, 300, 300);
      break;
    case 8:
      image(images[8], 0, 0, 300, 300);
      break;
    case 0:
      image(images[0], 0, 0, 300, 300);
      break;
  }
  
}
