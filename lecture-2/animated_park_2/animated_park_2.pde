
PImage image1;
PImage image2;
PImage image3;

PImage image4;
PImage image5;
PImage image6;

PImage image7;
PImage image8;
PImage image9;

void setup() {
 
  image1 = loadImage("park_001.jpg");
  image2 = loadImage("park_002.jpg");
  image3 = loadImage("park_003.jpg");
  
  image4 = loadImage("park_004.jpg");
  image5 = loadImage("park_005.jpg");
  image6 = loadImage("park_006.jpg");
  
  image7 = loadImage("park_007.jpg");
  image8 = loadImage("park_008.jpg");
  image9 = loadImage("park_009.jpg");

  size(300, 300);
  background(0, 0, 0);
  frameRate(30);
}

void draw() {

  // Using modulo to get numbers between 0 and 8.
  int pick = frameCount % 9;
  
  // Using the switch command to display a different image, for each number
  switch(pick) {
    case 1: 
      image(image1, 0, 0, 300, 300);
      break;
    case 2:
      image(image2, 0, 0, 300, 300);
      break;
    case 3:
      image(image3, 0, 0, 300, 300);
      break;  
    case 4:
      image(image4, 0, 0, 300, 300);
      break;
    case 5:
      image(image5, 0, 0, 300, 300);
      break;
    case 6:
      image(image6, 0, 0, 300, 300);
      break;
    case 7:
      image(image7, 0, 0, 300, 300);
      break;
    case 8:
      image(image8, 0, 0, 300, 300);
      break;
    case 0:
      image(image9, 0, 0, 300, 300);
      break;
  }
  
}
